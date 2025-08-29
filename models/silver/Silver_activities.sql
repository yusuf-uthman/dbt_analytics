{{ config(materialized = 'table')}}
 
 with source as (
    select * from {{ref ('bronze_activities') }}
 )
 select 
     source.*  exclude (
        activity_id, 
        opportunity_id, 
        rep_id, 
        activity_type, 
        duration_minutes, 
        outcome
        ),
        
        --integer for all id columns--
       cast ( activity_id       as int)  as activity_id,
        cast (rep_id            as int)  as rep_id,
        cast (opportunity_id    as int ) as opportunity_id,
        cast (duration_minutes  as int)  as duration_minutes,

        --upercase for text columns---
        upper (outcome)                 as outcome,
        upper (activity_type)           as activity_type,
        --column to keep--
       --- business,---
        --- New column for duration hours---
        round (cast(duration_minutes as number) / 60, 2) as duration_hours
        from source

select activity_id,rep_id,opportunity_id from bronze_activities
select duration_minutes, outcome, activity_type from bronze_activities