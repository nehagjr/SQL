use Dummy;
desc customers;
desc orders;
desc orderdetails;
select customerName,city,state,country from 
customers c
left join 
orders o
on c.customerNumber=o.customerNumber
where o.customerNumber is null;

select o.orderNumber, status, (quantityOrdered*priceEach) as total_sales  from 
orders  o
inner join
orderdetails od
on o.orderNumber =od.orderNumber;
