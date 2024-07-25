create database Neha;
use Neha ;
create table myTbl(emp_id int, ename varchar(20),D_O_J date, salary decimal(10,2));
desc myTbl;

#rename table old_nm to New_nm
rename table myTbl to Employee;
desc Employee;

#add column
#alter table employee add column column_nm dataType
alter table Employee add column age tinyint;
 
# remove a column 
# alter tbl tbl_nm drop column column_nm
alter table Employee drop column salary;

# change cloumn_nm
# alter tbl tbl_nm rename column_nm to new column_nm
alter table Employee rename column ename to EmpName;

#change datatype perticular structure particular 
#alter tbl tbl_nm modify column_nm newDataType
alter table Employee modify age int;

desc Employee;

#insert into tbl_nm(column_nm) values()
insert into Employee(emp_id,EmpName,D_O_J,age) values(101,"xyz","2003-3-3",21);

insert into Employee(emp_id,EmpName,D_O_J,age) values(102,"yui","2000-6-10",24),(103,"mko","2004-1-3",20);

#select * from tbl_nm
select * from Employee;

#insertion --- extention set 
insert into employee
set emp_id="104",
EmpName="Neha",
D_O_J="2000-5-10",
age=29;

#update  tbl_nm set 

update Employee set EmpName="Cybrom" where emp_id=101;

#1175 error comes bcose we can't edit in existing structure
set sql_safe_updates=0;













