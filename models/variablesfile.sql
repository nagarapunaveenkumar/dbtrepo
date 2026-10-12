select * from {{source('eth2','employee1')}}
where sal>={{var('min_salary')}}