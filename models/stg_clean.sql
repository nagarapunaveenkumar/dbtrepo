{{config(materialized='ephemeral')}}
select eid,ename from {{source('eth2','employee1')}}
