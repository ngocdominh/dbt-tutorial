{% macro get_date_parts(date_column) %}
    (SELECT struct (
        {{date_column}} as original_date,
        EXTRACT(YEAR FROM {{date_column}}) as year,
        EXTRACT(MONTH FROM {{date_column}}) as month,
        EXTRACT(DAY FROM {{date_column}}) as day,
        EXTRACT(DAYOFWEEK FROM {{date_column}}) as day_of_week,
        EXTRACT(DAYOFYEAR FROM {{date_column}}) as day_of_year,
        EXTRACT(WEEK FROM {{date_column}}) as week,
        EXTRACT(QUARTER FROM {{date_column}}) as quarter
    ) as extract_date
    )
{% endmacro %}