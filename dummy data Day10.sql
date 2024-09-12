use dummy;
show tables;
desc products;

select year(orderdate) as order_year, productLine, sum(quantityordered*priceeach) as total_order_value from
orders o
inner join
orderdetails od
using (ordernumber)
inner join products p
using (productcode)
group by year(orderdate),productLine;
