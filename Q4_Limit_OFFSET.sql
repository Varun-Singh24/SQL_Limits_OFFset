USE employees ;
Show tables ; 
select * from employees ; 
-- Limit will give only limit top 5 rows from the table ;
select * from employees Limit 5 ; 

select * from employees Limit 5 offset 5 ; -- will give from 6 to 10 
select * from employees Limit 5 offset 2 ; 

SELECT 
    *
FROM
    employees
LIMIT 5 OFFSET 10; -- it will start after 10,  from 11 till 15 

-- BY DEFALUT OFFFSET IS 0 ; 

select * from employees where department = 'Sales' Limit 5 offset 0 ; -- give only 5 

select * from employees where department = 'Sales' Limit 5 ;  -- Same result 

-- ALSO 
select * from employees where department = 'Sales' Limit 5 offset 10 ; --  

