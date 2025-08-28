with silver_opportunities as(
    select
        opportunity_id,
        rep_id,
        account_name,
        opportunity_value,
        stage,
        close_date,
        product_type,
        business
    from bronze_opportunities
)

alter table silver_opportunities
alter column rep_id int,
alter column opportunity_id int;

select *
from silver_opportunities
