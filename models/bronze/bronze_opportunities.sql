{{ config(materialized='table') }}

with source as (
  select
    REP_ID,
    ACCOUNT_NAME,
    CLOSE_DATE,
    PRODUCT_TYPE,
    OPPORTUNITY_VALUE,
    OPPORTUNITY_ID,
    STAGE,
    'group_3_sales' as business  
 from {{ source('RAW_GROUP_3_DBT_CLASS', 'OPPORTUNITIES') }}
)
select
    REP_ID,
    ACCOUNT_NAME,
    CLOSE_DATE,
    PRODUCT_TYPE,
    OPPORTUNITY_VALUE,
    OPPORTUNITY_ID,
    STAGE,
    business
from source
