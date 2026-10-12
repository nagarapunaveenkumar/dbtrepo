{{config (materialized='incremental',incremental_strategy='merge',unique_key='eid')}}
select * from {{source('eth2','employee1')}}

{% if is_incremental() %}
where created_at >=(select max(created_at) from {{this}})
{% endif %}