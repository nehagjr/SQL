show databases;
create database Lotus;
use Lotus;
create table users(U_id int,U_nm varchar(20),Mobile varchar(10),City varchar(20),DOB date);
desc users;
insert into users1(U_id,U_name,Mobile,City,DOB) values(101,"Neha","6352414141","Bhopal","2003-03-03");

insert into users 
set U_id=102,
U_nm="Om",
Mobile="6352414141",
City="pip",
DOB="2002-10-24";

select * from users1;

alter table users rename column U_nm to U_name;
rename  table  users to users1;

update users1 set City="pipariya" where U_id=102;

set sql_safe_updates=0;

#delete command
delete from users1 where U_id=101;
rollback;
# data will not rollback without start transa
start transaction;
delete from users1 where U_id=102;
rollback;







