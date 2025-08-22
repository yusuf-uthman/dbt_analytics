with 

source as (

    select * from {{ source('RAW_GROUP_3_DBT_CLASS', 'SALES_REPS') }} 

)
select EMAIL, REGION from source