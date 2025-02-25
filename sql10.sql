-- set operation
use sakila;
select * from actor where actor_id in (2,3)
union
select * from actor where actor_id in (3,5);

select * from actor where actor_id in (2,3)
union
select first_name, actor_id, last_name, last_update
from actor where actor_id in (3,5);

select * from actor where actor_id in (2,3)
union all
select *
from actor where actor_id in (3,5);

select * from actor where actor_id in (2,3,4)
except
select *
from actor where actor_id in (3,5);

select * from actor where actor_id in (5,4,3)
except
select *
from actor where actor_id in (3,5);



select * from actor;
desc actor;
select * from film_actor;
desc film_actor;

select actor.actor_id, first_name, film_actor.film_id
from actor join film_actor
where actor.actor_id=film_actor.actor_id;

select actor.actor_id, count(film_actor.film_id) as movies
from actor join film_actor
where actor.actor_id=film_actor.actor_id
group by actor.actor_id order by movies desc;
