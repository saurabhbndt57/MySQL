use sakila;

-- orderby, alias, multi-row functions
select actor_id from actor order by first_name, actor_id desc;

select actor_id, actor_id+10 as "newactor" from actor;                 -- giving a name to a columns is known as alias.

-- sum, count, max, min, avg
select * from payment;
select distinct(customer_id) from payment;                             -- distinct = gives unique values
select count(customer_id) from payment;
select count(customer_id), count(distinct(customer_id)) from payment;

select count(customer_id), count(distinct(customer_id)),
count(customer_id) - count(distinct(customer_id)) as repetativeCustomer from payment;

select count(amount), sum(amount), avg(amount),
max(amount), min(amount) from payment;


select sum(amount), amount from payment;

-- group by
-- similar value's group
select sum(amount) from payment where customer_id=1;
select sum(amount) from payment where customer_id=2;

select customer_id, count(amount), sum(amount) from payment group by customer_id;

select amount, count(amount) from payment group by amount;

select staff_id, count(rental_id), sum(amount), max(amount) from payment group by staff_id;

select extract(month from payment_date) as "months", avg(amount), max(rental_id), min(rental_id) from payment group by months;










select extract(day from payment_date) as "days", avg(amount) from payment  group by order by payment;