create database joins;
use joins;
create table table1(id int);
create table table2(id int);

insert into table1(id) values(1),(1),(1),(2),(3),(3),(5);
insert into table2(id) values(1),(1),(2),(3),(4),(null);

select * from table1;
select * from table2;

#---------------------cross------------------
# cross join (cartesian join) - no. of records of tbl1 * no. of records of tbl2

#select clmlist tblnm1 cross join tblnm2  
select * from table1 cross join table2;
select count(*) from table1 cross join table2;

# on condation cross join behave like a inner join
select * from table1 t1 cross join table2 t2 on t1.id=t2.id;

#  ---------------inner---------------
# inner join--dy default sql do inner join

select * from table1 t1 inner join table2 t2 on t1.id=t2.id;
select count(*) from table1 t1 join table2 t2 on t1.id=t2.id;

