create database CROMA;
use CROMA;
create table users(userId int primary key,uname varchar(20) not null,mobile varchar(20) unique,
age tinyint,city varchar(20) default "Bhopal",check(age>18));
desc users;


## remove not null constraints
# alter table tbl_nm modify column_nm datatype
alter table users modify uname varchar(20);

## remove  default constraints 
alter table users modify city varchar(20);

# remove primary key
alter table users drop primary key;
alter table users modify userId int;

#alter table tbl_nm drop key uniqueKeyName
alter table users drop key mobile;

#alter table tbl_nm drop constraint tablenm_chk_1
alter table users drop constraint users_chk_1;

#add not null and default
alter table users modify uname varchar(20) not null;
alter table users modify city varchar(20) default "Bhopal";

#add primary key
alter table users add primary key (userId);

alter table users add unique (mobile);

alter table users add constraint check (age>18);

#add foreigh key add the time of tbl creation
create table orders(oid int primary key,uid int,pid int,
foreign key (uid) references users(userId));
desc orders;


alter table orders drop foreign key orders_ibfk_1; 
alter table orders drop key uid;

#add foreigh key 
alter table orders add foreign key (uid) references users(userId);