use dummy;
desc orders;
desc customers;
desc orderdetails;

select c.customerNumber, customerName,orderDate, status, (quantityOrdered*priceEach) as total_sales  from 
orders o
inner join
orderdetails od
on o.orderNumber =od.orderNumber
join customers c where c.customerNumber=o.customerNumber;