{{config(materialized='table')}}

with rawdata as (select * from {{source('eth2', 'employee1')}}),
cleaned as (select eid, upper(ename) as empname,sal*12 as AnnSal from rawdata)
select * from cleaned