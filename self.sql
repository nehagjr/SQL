create database Resturent;
use Resturent;
create table Resturent(Res_id int primary key auto_increment,r_name varchar(30) unique,
address varchar(30) not null,Mobile varchar(20) unique);

create table Menu(m_id int primary key auto_increment,R_id int,
Item_name varchar(20) unique,price decimal(5,2) not null);

alter table Menu add foreign key(R_id) references Resturent(Res_id) on delete cascade on update cascade;


create table users(u_id int primary key auto_increment,U_name varchar(20) not null,
email varchar(20) unique,password varchar(10) not null,phone varchar(20) unique,
DOB date);

create table orders(o_id int primary key auto_increment,R_id int ,u_id int ,
d_id int,delivery_status varchar(20),total_order int not null,foreign key(R_id) references
Resturent(Res_id) on update cascade on delete set null,foreign key(u_id)
references users(u_id));



create table Driver(D_id int primary key auto_increment,D_name varchar(20) not null,
mobile varchar(20) unique,address varchar(20) not null,location varchar(20));

alter table Menu auto_increment=100;
alter table users auto_increment=200;
alter table orders auto_increment=300;
alter table Driver auto_increment=400;

desc Resturent;
desc Menu;
desc users;
desc orders;
desc Driver;

start transaction;
drop table Menu;
rollback;
insert into Driver(D_id, D_name, mobile, address, location)
values("101","xyz","9685747474","jhalon","96dcdcec"),
("102","xyz","9685749474","jhalon","96dcdcec"),
("103","xyz","9685744474","jhalon","96dcdcec");

select * from Driver;
start transaction;
delete from Driver;
set sql_safe_updates=0;
rollback;
  

