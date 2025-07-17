with 
src as (
    select 
        * 
    from {{source('restaurant', 'customers')}}
)
select 
    index, first_name,  last_name, company, city, country
from src