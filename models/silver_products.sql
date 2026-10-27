{{ config(
    materialized='table',
    alias='products',
    schema='silver'
) }}

SELECT
    product_id,
    product_name,
    category
FROM {{ source('my_bronze', 'products_raw') }}