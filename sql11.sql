create database regex2;
use regex2;

-- ddl statement (Data Defination Language)
create table employee1(eid int);
insert into employee1 values(2147483647);
select * from employee1;
create table employee3(eid int(4) zerofill);
insert into employee3 values(7);
select * from employee3;



-- int => 4 byte
-- big int => 8 byte
-- tinyint => 1 byte => -128 to 127

create table employee20(id tinyint);
insert into employee20 values(128);
select * from employee20;

-- float and double(decimal)
create table emp1(salary float);
insert into emp1 values(15.3356354);

create table emp2(salary float(4,2));
insert into emp2 values(15.336);
select * from emp2;

-- varchar
-- char

create table ep5(name1 char(4));
insert into ep5 values("zzqw");
select name1, length(name1) from ep5;

-- date
create table test(dob date);
-- YYYY-MM-DD hh:mm:ss
insert into test values("2022-05-12");
select from test;
 

-- dml statement (data manipulation statement)
insert into employee(eid) values 