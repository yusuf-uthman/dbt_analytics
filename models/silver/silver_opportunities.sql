with source as(
    select *
    from {{ref('bronze_opportunities')}}
)

select 
    cast(opportunity_id as int) as opportunity_id,
        cast(rep_id as int) as rep_id,
        trim(upper(account_name)) as account_name,
        cast(opportunity_value as dec) as opportunity_value,
        trim(upper(stage)) as stage,
        cast(close_date as date) as close_date,
        year(close_date) as op_close_year,
        month(close_date) as op_close_month,
        day(close_date) as op_close_day,
        trim(upper(product_type)) as product_type,
        trim(upper(business)) as business,
from source
