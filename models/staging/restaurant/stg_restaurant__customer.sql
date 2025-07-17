with 

source as (

    select * from {{ source('restaurant', 'customers') }}

),

renamed as (

    select *

    from source

)

select * from renamed
