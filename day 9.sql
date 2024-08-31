use neha;
create table orders(id int primary key auto_increment,name varchar(20),mobile varchar(20));
desc orders;
insert into orders(name,mobile) values("hij","46546"),("rger","5455465"),("ererf","3465465");
select * from orders;
insert into orders(name,mobile) values("sdfd","46555446"),("rdfr","54656"),("dcds","4545");
delete from orders where id=5;

#creating variable here ...here @ define it is an user define variable
set @num=0;
update orders set id=@num:=@num+1;
set sql_safe_updates=0;

alter table orders auto_increment=100; 
drop table orders;