with 
src as (
    select 
        * 
    from {{source('restaurant', 'customers')}}
)
select * from src