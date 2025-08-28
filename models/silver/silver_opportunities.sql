with silver_opportunities as(
    select
        cast(opportunity_id as int) as cleaned_opportunity_id,
        cast(rep_id as int) as cleaned_rep_id,
        trim(upper(account_name)) as cleaned_account_name,
        cast(opportunity_value as dec) as cleaned_opportunity_value,
        trim(upper(stage)) as cleaned_stage,
        cast(close_date as date) as cleaned_close_date,
        year(close_date) as op_close_year,
        month(close_date) as op_close_month,
        day(close_date) as op_close_day,
        trim(upper(product_type)) as cleaned_product_type,
        trim(upper(business)) as cleaned_business,
    from bronze_opportunities
)

select 
    cleaned_opportunity_id,
    cleaned_rep_id,
    cleaned_account_name,
    cleaned_opportunity_value,
    cleaned_stage,
    cleaned_close_date,
    op_close_year,
    op_close_month,
    op_close_day,
    cleaned_product_type,
    cleaned_business,
from silver_opportunities
