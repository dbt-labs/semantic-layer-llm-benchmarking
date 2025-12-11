-- models/omg_models/policy_holder_policy.sql
{{
  config(
    materialized = 'table'
  )
}}

select
    apr.party_identifier,
    apr.agreement_identifier as policy_identifier,
    p.policy_number,
    pt.party_name,
    pt.party_type_code,
    apr.effective_date as relationship_effective_date,
    apr.expiration_date as relationship_expiration_date,
    p.effective_date as policy_effective_date,
    p.expiration_date as policy_expiration_date,
    p.status_code as policy_status_code
from {{ ref('agreement_party_role') }} apr
inner join {{ ref('party') }} pt
    on apr.party_identifier = pt.party_identifier
inner join {{ ref('policy') }} p
    on apr.agreement_identifier = p.policy_identifier
where apr.party_role_code = 'PH'  -- Policyholder role only
