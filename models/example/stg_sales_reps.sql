with 

source as (

    select * from {{ source('RAW_GROU_3_DBT_CLASS', 'SALES_REPS') }} 

)
select Email, Region from source;