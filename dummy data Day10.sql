use dummy;
show tables;
desc products;

create table sales
select year(orderdate) as order_year, productLine, sum(quantityordered*priceeach) as total_order_value from
orders o
inner join
orderdetails od
using (ordernumber)
inner join products p
using (productcode)
group by year(orderdate),productLine;

select * from sales;

select productLine , sum(total_order_value) from
sales group by productLine;

select sum(total_order_value)from sales;

#merge both above------------------
select productLine , sum(total_order_value) from
sales group by productLine
union
select null,sum(total_order_value)from sales;

# rollup is a keyword ----> do supper aggreate -------by default 
select productLine , sum(total_order_value) from
sales group by productLine with rollup;

#w sql qary that  return total order value by product line and order year
select productLine, ifnull(order_year,"total") ,sum(total_order_value) from
sales group by productLine, order_year  with rollup;
