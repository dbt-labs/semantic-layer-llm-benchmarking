-- models/omg_models/policy_premium_detail.sql
{{
  config(
    materialized = 'table'
  )
}}

select
    p.policy_identifier,
    p.policy_number,
    p.effective_date as policy_effective_date,
    p.expiration_date as policy_expiration_date,
    p.status_code,
    pa.policy_amount_identifier,
    pa.policy_amount,
    pa.amount_type_code,
    pa.insurance_type_code,
    pa.effective_date as amount_effective_date
from {{ ref('policy') }} p
inner join {{ ref('policy_amount') }} pa
    on p.policy_identifier = pa.policy_identifier
inner join {{ ref('premium') }} pr
    on pa.policy_amount_identifier = pr.policy_amount_identifier  -- Filter for premium amounts only
