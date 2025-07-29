with 

source as (

    select * from {{ source('RAW_GROU_3_DBT_CLASS', 'PERFORMANCE') }}

)  
select * from source
