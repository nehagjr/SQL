create database CROMA;
use CROMA;
create table customer(cust_id int,cust_name char(20),city varchar(20),state varchar(20),
country char(20),pincode int,creditlimit decimal(10,2),selesempnum int,d_o_b date);
desc customer;

insert into customer(cust_id, cust_name, city, state, country, pincode, creditlimit, selesempnum, d_o_b) 
values(101,"priyanka","Bhopal","MP","India",122232,54152.63,6311,"1989-6-23"),
(102,"sraddha","Indore","MP","India",635241,25614.66,6511,"1990-6-27"),
(103,"priyanka","hoshangabad","MP","India",4545454,36541.15,9696,"1984-8-21"),
(104,"priyanka","pune","Maharastra","India",4545525,56324.96,4563,"1995-9-2");

insert into customer set
cust_id=105,
cust_name="Pawan",
city="amamdabad",
state="Gujrat",
country="India",
pincode=254141,
creditlimit=9623,
selesempnum=5698,
d_o_b='2000-10-17';
select * from customers ;
alter table customer add column phone char(20);
alter table customer drop phone;
alter table customer rename column cust_name to customername;
alter table customer modify city char(30); 
rename table customer to customers;
update customers set city="Bhopal" where cust_id=102;
set sql_safe_updates=0;
start transaction;
delete from customers where cust_id=105;
rollback;
truncate customers;
drop table customers;
drop database CROMA;


