-- retrieve
-- sql language queries
-- dummy database
show databases;
use sakila;
show tables;
describe actor;

select * from actor;

select actor_id, first_name, ACTOR_ID FROM ACTOR;

SELECT ACTOR_ID, FIRST_NAME,ACTOR_ID*100 FROM ACTOR;

select actor_id, first_name,
ACTOR_ID*100;

select * from actor;

-- select * from table;  => saare column selection
-- where clause

select * from actor
where actor_id=2;

-- > , < , >= , <= , = , != , <>
-- operator => between , in and like operator
-- between => range of values
select * from actor
where actor_id between 1 and 6;

select * from actor
where actor_id in (2,5,500);

select actor_id, first_name from actor where first_name='NICK' or first_name='ED';

-- like operator => pattern finds
-- wildcard character => % => zero or more character
-- _ => only 1 character 

select * from actor
where first_name like 'E%';
select * from actor
where last_name like '%Y';

select * from actor
where first_name like 'S%Y';

select * from actor
where first_name like '%Y';

select * from actor
where first_name like '%A%';

select * from actor
where first_name like '%SA%';

select * from actor
where first_name like 'E%';

select * from actor
where first_name like 'E_';

select * from actor
where first_name like '_A';

select * from actor
where first_name like '_A%';

select * from actor
where first_name like '____';

select * from actor
where first_name like '_E_';

select * from actor
where first_name like '__R_';

select * from actor
where first_name like '_%EE%_';

select * from actor
where first_name like '_H%Z_';

select * from actor
where first_name like '%I__';
