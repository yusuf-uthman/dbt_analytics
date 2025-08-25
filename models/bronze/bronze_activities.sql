{{config(materialized = 'table')}}

with 

source as (

    select 
        activity_id, 
        opportunity_id, 
        rep_id, 
        activity_type, 
        duration_minutes, 
        outcome, 
        'group_3_sales' as business 
    from {{ source('RAW_GROUP_3_DBT_CLASS', 'ACTIVITIES') }}

)  

select 
    activity_id, 
    opportunity_id, 
    rep_id, 
    activity_type, 
    duration_minutes, 
    outcome, 
    business 
from source
 

 