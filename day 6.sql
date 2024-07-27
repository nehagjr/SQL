use lotus;
create table orders(o_id int,u_id int,p_id int,product_name varchar(30),price decimal(10,2));
desc orders;
insert into orders(o_id, u_id, p_id,product_name, price) values(201,101,301,"Tonner",500);
insert into orders set o_id=202,
u_id=102,
p_id=302,
product_name="Body lotion",
price=300;
insert into orders(o_id, u_id, p_id,product_name, price) values(203,103,303,"Serum",800);

alter table orders add column order_quentity int;
desc orders;

alter table orders drop column order_quentity;

alter table orders rename column price to Amount;

alter table orders modify product_name char(20);

update orders set product_name = "Cream" where u_id=101;

set sql_safe_updates=0;

delete from orders where u_id=101;
start transaction; 

drop table orders;
drop database lotus;



