with 

source as (

    select * from {{ source('RAW_GROU_3_DBT_CLASS', 'SALES_REPS') }} 

)
select EMAIL, REGION from source