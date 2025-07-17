with 

source as (

    select * from {{ source('restaurant', 'customers') }}

),

renamed as (

    select
        index,
        customer_id,
        first_name,
        last_name,
        company,
        city,
        country,
        phone_1,
        phone_2,
        email,
        subscription_date,
        website

    from source

)

select * from renamed
