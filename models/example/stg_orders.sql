SELECT
    o.order_id,
    c.customer_id,
    c.customer_name,
    p.product_id,
    p.product_name,
    o.quantity,
    o.order_date
FROM raw_sample.orders o
JOIN {{ ref('stg_customers')}} c ON o.customer_id = c.customer_id
JOIN raw_sample.products p ON o.product_id = p.product_id