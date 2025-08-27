

{{ config(
    materialized='table'
) }}

WITH source AS (
    SELECT
        REP_ID AS rep_id,
        FIRST_NAME AS first_name,
        LAST_NAME AS last_name,
        REGION,
        QUOTA,
        EMAIL,
        HIRE_DATE,
        'group_3_sales' AS business
    FROM {{ source('RAW_GROUP_3_DBT_CLASS', 'SALES_REPS') }}
)


SELECT 
REP_ID AS rep_id,

        REGION,
        first_name,
        last_name,
        QUOTA,
        EMAIL,
        HIRE_DATE,
        business

        FROM source
