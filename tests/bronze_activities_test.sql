select distinct(activity_id) from {{ source('RAW_GROUP_3_DBT_CLASS', 'ACTIVITIES') }}
 where opportunity_id is null