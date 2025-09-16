with source as (
    select * from {{ref('silver_activities')}}
),

rep_effectiveness as (
    select 
        distinct(rep_id),
        activity_type,
        business,
        count(*) as total_activities,
        count(case when outcome = 'SUCCESSFUL' then 1 else null end) as successful_activities,
        successful_activities/ total_activities as success_rate,
        AVG(duration_minutes) as avg_duration_time,
        from source
        group by rep_id, activity_type, business
        order by rep_id
)

select *
from rep_effectiveness
