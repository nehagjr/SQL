use dummy;
select c.customerNumber, customerName,ordernumber from 
customers c
left join 
orders o
on c.customerNumber=o.customerNumber;


#-----------using------------
select customerNumber, customerName,ordernumber from 
customers 
left join 
orders 
using(customerNumber);
desc customers;
desc employees;
desc payments;
select * from employees;

select customerNumber,customerName,employeeNumber,c.salesRepEmployeeNumber,amount,checkNumber from 
employees e 
inner join 
customers c 
on e.employeenumber=c.salesRepEmployeeNumber
left join 
payments p
using (customernumber)
where amount>50000 and amount<100000
order by amount desc;


select * from 
employees e
left join 
customers c
on e.employeenumber=c.salesRepEmployeeNumber
union
select * from 
employees e
right join 
customers c 
on e.employeenumber=c.salesRepEmployeeNumber
where e.employeenumber is null;
 

