with source as (
  select * from {{ ref('silver_opportunities') }}
),

  rep_process as(
  select
  rep_id,
  product_type,
  stage,
  op_close_year,
  op_close_month,
  op_close_day,
  sum(opportunity_value) as pipeline_value
  from source
group by
  rep_id, product_type, stage, op_close_year, op_close_month, op_close_day
  )
  select *
  from rep_process
