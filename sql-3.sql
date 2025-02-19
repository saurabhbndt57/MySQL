-- DQL => select
use sakila;
select * from actor;

-- and and or 

select * from actor where actor_id>2 or first_name='Johnny';

select * from actor where
(first_name='NICK' or first_name='ED')
and actor_id>2;

-- functions
-- block of code => code reusable
-- code readable

-- pre-defined
-- string function
-- string
select first_name, lower(first_name) from actor;
select first_name, upper(first_name) from actor;

select first_name, last_name,
concat(first_name,'-', last_name,'xyz'),
concat_ws('-',first_name, last_name,'xyz')
from actor;

select * from actor
where concat(first_name,last_name) = 'EDCHASE'

-- substr
select first_name,
substr(first_name,3) from actor;

select first_name,
substr(first_name,-3) ,
substr(first_name,1,3) from actor;

-- instr
select first_name,
instr(first_name,'E'),
locate('E', first_name,3),
char_length(first_name)
from actor;

-- length
-- dual table
select 'hey','hello' from dual;

select 8752
from dual;

select amount from payment;

select first_name,
lpad(first_name,3,'$') from actor;

select ' hey ',
trim(' hey ') from dual;

select '  hey  ',
trim( leading 'z' from 'zzzhezzz'),
trim( trailing 'z' from 'zzzhezzz') from dual;

