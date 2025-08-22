with 

source as (

    select * from {{ source('RAW_GROUP_3_DBT_CLASS', 'OPPORTUNITIES') }}

)  
select STAGE,REP_ID,PRODUCT_TYPE,OPPORTUNITY_VALUE
,OPPORTUNITY_ID from source

