insert into employee02(id, salary) values(20,null);
select * from employee02;

drop table employee02;
create table employee02(id int primary key, salary int unique);
insert into employee02(id,salary) values(null,1002);
select * from employee02;

drop table employee02;
create table employee02(id int primary key, fname varchar(20)
salary int,
constraint regex_emp_salary_uk unique(salary));
insert into employee02 values(10, 'a', 99),(20, 'b',99);
select * from employee02;


create database db;
use db;
select database(db);
create table student (
student_id int,
student_name varchar(100),
fee decimal(10,2) not null,
college_name varchar(255) default 'Regex',
phone_number varchar(15) unique,
primary key (student_id, student_name));
