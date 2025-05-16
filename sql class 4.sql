-- string functions
-- numbers, date
use sakila;
select 9*1547 from dual;

-- now()
select sysdate(), curdate(), curtime(), current_timestamp(), now() from dual;  -- all are same use 'now()' mostly

select now(), adddate(now(), 2) from dual;   -- adding 2 days
select now(), adddate(now(), interval 2 month) from dual;
select now(), adddate(now(), interval 2 week) from dual;

select datediff(now(), '2025-05-30 17:17:55') from dual;    -- difference between the dates

select last_day( now() ) from dual;
select month( now() ), year(now()) from dual;

select now(), date_format( now(), 'This year is %Y') from dual;

select extract(minute from now()) from dual;


-- round(), truncate(), pow, floor(), ceil()
select 24.325, round(24.525) from dual;    -- 0.5 means the upper values
select 24.325, round(24.625), round(24.655,1) from dual;   -- for decimal value round off

select round(24.32 , -1) from dual;
select round(24.32 , -2) from dual;


select round(364.32, -2), truncate(364.37, 1) from dual;   -- for 1 decimal value only

select mod(11, 2), pow(2,3), floor(10.99999), ceil(19.0001) from dual;


-- 
select * from actor;
-- if (condition, True, False)
select first_name, actor_id, if(first_name='NICK', actor_id*10, 'no value') from actor;

select first_name, actor_id, last_name,
 if(actor_id%2=0, concat(first_name," ", last_name),concat(first_name, " ", last_name, "$"))
 from actor;

select * from actor;
select first_name,
case
	when mod(actor_id,2)=0 then "yes"
	when actor_id=5 then "####yes####"
	else "NO"
end
from actor;




