use applestore;
alter table orders drop foreign key orders_ibfk_1;
alter table orders drop key c_id;
desc orders;
desc customer;
alter table orders add foreign key (c_id) references customer(c_id);

select * from customer;
select * from orders;

insert into customer(c_id,c_name,mobile,city,age) 
values(1,"xyy","645654","bpl",23),
(2,"olk","854466","bpl",23),
(4,"koo","5465","bpl",23),
(5,"hkd","78544215","bpl",29);

insert into customer(c_id,c_name,mobile,city,age) 
values(6,"koo","6654","bpl",23),
(7,"hkd","3654","bpl",29);

insert into orders(o_id,c_id,p_id) values (102,1,201),(106,2,202),(107,1,203),(105,4,202);
delete from orders where o_id=105;
update orders set c_id=7 where o_id=107;

#chile se perent me change nhi kr skte 
#erroe through------------
update orders set c_id=15 where o_id=107;

#chile se perent me change nhi kr skte
#erroe through------------
insert into orders(o_id,c_id,p_id) values (108,15,201);


