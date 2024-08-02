use dummy;

select * from customers;
select employeeNumber,firstName,lastName,jobTitle from employees;

#were clause--->filter row
#were clouse with equality operator
#select columnn_m from tbl_nm where column_nm ="data value"
select employeeNumber,firstName,lastName,jobTitle from employees where jobTitle="sales rep" order by firstName asc;


#were clouse with logical operator-->and or
#write a sql quary to get details of an employee whare jbtitle is salse rep and officecode=1
#-----------and----------
select employeeNumber,firstName,lastName,jobTitle from employees where jobTitle="sales rep" and officeCode=1;
#-----------or----------
select employeeNumber,firstName,lastName,jobTitle from employees where jobTitle="sales rep" or officeCode=1;


#were clouse with between operator
#write a sql quary to get details of an employee ware officeCode between 1 and 3 
#syntex-->
select employeeNumber,firstName,lastName,jobTitle from employees where officeCode between 1 and 3;

#----------not equal to----------------
#write a sql quary to get details of an employee whare jbtitle not equal to salse rep 
select employeeNumber,firstName,lastName,jobTitle from employees where  jobTitle!="sales rep";

desc customers;
select customerName,creditLimit from customers where creditLimit between 70000 and 110000;
select customerName,creditLimit from customers where creditLimit >=70000 and creditLimit <= 110000;

desc orders;
select * from orders where year(orderDate)="2003";

#null--- is null
select employeeNumber,firstName,lastName,jobTitle,reportsto from employees where reportsto is null;
select firstName,lastName,jobTitle,reportsto from employees where reportsto is not null;

#----in or not in operatior----------
select employeeNumber,firstName,lastName,jobTitle,officecode from employees where officecode in (1,3,5);
select employeeNumber,firstName,lastName,jobTitle,officecode from employees where officecode not in (1,3,5);

#get customer who lives in "France","USA","Japan"
desc customers;
select customerNumber,phone,country from customers where country in ("France","USA","Japan");

#
select firstName,lastName,jobTitle from employees where lastName like "%son";
select employeeNumber,firstName,lastName from employees where firstName like "a%";
select firstName,lastName,jobTitle from employees where lastName like "p%n";

select employeeNumber,firstName from employees where firstName like "t_m";

select firstName,lastName,jobTitle from employees where lastName not like "b%";

#  to find unique record we use distinct
select distinct status from orders;