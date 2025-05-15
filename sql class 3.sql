use sakila;
select * from actor where first_name not like '%A%;'
-- distinct , count
select distinct (first_name) from actor;

-- functions
-- code reusable
-- string functions
-- scaler function    -- multi row functions

-- scaler function => apply=> result for each row
select first_name, lower(first_name), upper(lower(last_name)) from actor;
select first_name, lower(first_name), 
upper(lower(first_name)), length(first_name) from actor;

# substr(col, index)
select first_name, substr(first_name, 2), substr(first_name,2,3) from actor;

select first_name, instr(first_name, 'I') from actor;

select first_name, last_name, concat(first_name, '-', last_name) from actor;

select first_name, last_name, concat_ws('-', first_name,last_name,'$') from actor;


-- trim ()  =>  white, character
select first_name, trim(' hey ') from actor;
select first_name, trim(' h         ey ') from actor;

-- lpad,  rpad
select first_name, rpad(first_name,6,'$') from actor;
