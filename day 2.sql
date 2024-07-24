show databases;
create database cybrom ;
use cybrom ;
show tables; 
create table student(s_id int,s_name varchar(20),Fees decimal(10,2),
Mobile varchar(15));

desc student;
rename table student to stu;
drop table stu ;
drop database cybrom;