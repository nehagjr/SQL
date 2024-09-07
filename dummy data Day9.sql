use dummy;
desc employees;

select * from 
employees e
left join 
customers c 
on e.employeenumber=c.salesRepEmployeeNumber
where c.salesRepEmployeeNumber is null;


select e1.employeenumber,
concat(e1.firstName ," ", e1.lastName) as manager ,
concat(e.firstName ," ", e.lastName) as direct_report ,
e.employeenumber
from 
employees e
inner join 
employees e1 
on e1.employeenumber=e.reportsTo;

desc customers;
select c.customerName,c1.customerName ,c.city from
customers c
inner join 
customers c1
on c1.city=c.city
and c.customerName<c1.customerName
order by c.city;

#----------group by------------------------
desc orders;
desc orderdetails;
select distinct status from orders;

select status from orders group by status;

select  status, count(status)  from orders group by status;

select  status, sum(priceEach*quantityOrdered) as amount  from 
orderdetails od
inner join
orders o
on od.orderNumber=o.ordernumber   
group by status;

select  year(orderDate) , sum(priceEach*quantityOrdered) as amount  from 
orderdetails od
inner join
orders o
on od.orderNumber=o.ordernumber   
group by year(orderDate);


