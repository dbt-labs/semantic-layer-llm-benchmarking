-- models/omg_models/claim_policy_bridge.sql
{{
  config(
    materialized = 'table'
  )
}}

select
    c.claim_identifier,
    c.claim_open_date,
    c.claim_close_date,
    c.claim_status_code,
    c.company_claim_number,
    p.policy_identifier,
    p.policy_number,
    p.effective_date as policy_effective_date,
    p.expiration_date as policy_expiration_date
from {{ ref('claim') }} c
inner join {{ ref('claim_coverage') }} cc
    on c.claim_identifier = cc.claim_identifier
inner join {{ ref('policy_coverage_detail') }} pcd
    on cc.policy_coverage_detail_identifier = pcd.policy_coverage_detail_identifier
inner join {{ ref('policy') }} p
    on pcd.policy_identifier = p.policy_identifier
