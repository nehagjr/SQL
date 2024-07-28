create database appleStore;
use appleStore;
create table customer(c_id int primary key ,c_name varchar(20) not null, mobile varchar(20) unique,city varchar(20) default "Bhopal",age tinyint ,check (age>18));
desc customer;


create table orders(o_id int primary key, c_id int,p_id int,foreign key (c_id) references customer(c_id) );
desc orders;

alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key c_id;

alter table customer drop primary key;

alter table customer add primary key (c_id);
alter table orders add foreign key (c_id) references customer(c_id) on delete set Null;

insert into customer(c_id,c_name,mobile,city,age) 
values(1,"xyy","4141414141","bpl",23),
(2,"olk","854466","bpl",23),
(3,"koo","9668545","bpl",23),
(4,"hkd","7854215","bpl",29);

insert into orders(o_id,c_id,p_id) values (101,1,201),(102,2,202),(103,1,203),(104,3,202);
select * from customer;
select * from orders;

delete from customer where c_id=4;
delete from customer where c_id=1;

alter table orders add foreign key (c_id) references customer(c_id);
delete from customer where c_id=2;

alter table orders add foreign key (c_id) references customer(c_id) on delete cascade;
delete from customer where c_id=2;
