use dummy;

select * from employees;
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