use sakila;
select * from payment where amount> (select amount from payment
where rental_id=1185);

select * from payment;
select payment_date, month(payment_date) 
from payment where payment_id = 3;

-- get those amount where the total no. of payments
-- for the amount should be greater 
-- then the total payment of 0.99

select * from payment;
select amount from payment group by amount 
having count(amount)>
(select count(amount) from payment where amount=0.99);

select * from payment;
select customer_id, sum(amount) from payment;



-- Multi-row subquery= (we can't use the <,>,==)
select * from payment
where amount in (select amount from payment
			where payment_id in (1,3));
            
select * from payment
where amount > any (select amount from payment
			where payment_id in (1,3));

select * from payment
where amount < any (select amount from payment
			where payment_id in (1,3));
            
select * from payment
where amount > all (select amount from payment
			where payment_id in (1,3));