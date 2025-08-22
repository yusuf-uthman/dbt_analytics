with 

source as (

    select * from {{ source('RAW_GROUP_3_DBT_CLASS', 'PERFORMANCE') }}

)  
select * from source