
Select 
        REP_ID, LAST_NAME, FIRST_NAME,  REGION, QUOTA, EMAIL, HIRE_DATE,
            'group_3_sales' As business
                from {{ source('RAW_GROUP_3_DBT_CLASS', 'SALES_REPS') }}
                        {{ config(
                                     materialized='table'
                            ) }}
