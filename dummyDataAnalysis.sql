use dummy;
show tables;
select * from customers;
select contactFirstName,customerNumber,phone,city,state,country from customers;

select * from employees;
select employeeNumber,firstName,lastName,jobTitle from employees;
select employeeNumber,concat(firstName," ", lastName) as fullname,jobTitle from employees;

select 1+1;
select * from orderdetails;
select orderNumber, productCode, (quantityOrdered*priceEach) as ordervalues from orderdetails;

#-------------------order by--------------------------------------------------------------------------
#selete columnlist from tbl order by column_nm [asc | desc] ----bt default ascending chalta hai

# select contactlastName,contactFirstName from customers order by contactlastName desc; 
# select contactlastName,contactFirstName from customers order by contactlastName desc,contactFirstName asc; 
select contactlastName,contactFirstName from customers order by contactlastName,contactFirstName asc; 

select * from orders;






