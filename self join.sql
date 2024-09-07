create database familyMembers;
use familyMembers;
create table family (memberid int,name char(20),age tinyint,parent_id int);
alter table family modify memberid varchar(10);
alter table family modify parent_id varchar(10);

insert into family (memberid,name,age,parent_id) values
('F1','David',4,'F5'),
('F2','carol',10,'F5'),
('F3','michael',12,'F5'),
('F4','johnson',36,null),
('F5','maryam',40,'F6'),
('F6','stewart',70,null),
('F7','rohan',6,'F4'),
('F8','asha',8,'F4');

select f1.name, f1.age ,f.name, f.age from 
family f
inner join 
family f1 
on f.memberid=f1.parent_id;


