with
    silver_sales_reps as (
        select
            cast(rep_id as int) as rep_id,  -- Convert ID to int
            upper(first_name) AS FIRST_NAME, -- Text fields to upper
            upper(last_name) AS LAST_NAME,
            upper(region) AS REGION,
            upper(email) AS EMAIL,
            CAST  (hire_date as Date) AS HIRE_DATE,
            upper(business) AS BUSINESS,
            cast(quota as decimal(18, 2)) as QUOTA,  -- -- convert quota to decimal
            -- Date parts
            extract(year from hire_date) as HIRE_YEAR,
            extract(month from hire_date) as HIRE_MONTH,
            extract(day from hire_date) as HIRE_DAY,
            UPPER(TO_CHAR(HIRE_DATE, 'Mon')) AS month_name,
            -- Years since hire
            date_part(year, current_date) - extract(year from hire_date) as STAFF_YEAR
        from {{ ref("bronze_sales_reps") }}
    )
    SELECT * 
    FROM  silver_sales_reps
