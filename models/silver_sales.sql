{{ config(
    materialized='table',
    alias='sales',
    schema='silver'
) }}

SELECT
    sale_id,
    CAST(sale_date AS DATE) AS sale_date,
    product_id,
    CAST(quantity AS INT) AS quantity,
    CAST(unit_price AS DOUBLE) AS unit_price
FROM {{ source('my_bronze', 'sales_raw') }}