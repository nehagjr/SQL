#write a sql quary to calculate the ave by price of all products and u will find burProce in product tbl
use dummy;
desc products;
select round(Avg(buyPrice),2) AVERAGE from products;

#to calculate the average by price for each product line

select productLine, round(Avg(buyPrice),2) AVERAGE from products
group by productLine order by AVERAGE desc;

#to get the num of product for each product line
select productLine, count(*) count from products
group by productLine order by count desc;

#to get totl order value for each product
desc orderDetails;
select productCode, sum(quantityOrdered*priceEach) as total from orderDetails
group by productCode order by total desc;

# to get totl order value by product code and name 
desc orderDetails;
select productCode,productLine, sum(quantityOrdered*priceEach) as total from 
orderDetails od
inner join
products p
using (productCode)
group by productCode,productLine order by total desc;

#to get hightest buyprice form the product tbl

select max(buyPrice) max from products;

#to get highest buyprice by product line
select productLine, max(buyPrice) max from products
group by productLine order by max desc;

#to calculate ave count mx min sum of buyprice by productline 
select productLine, avg(buyPrice) avg, max(buyPrice) max, min(buyPrice) min, sum(buyPrice) sum, count(buyPrice) count from products
group by productLine;

-- standared devation
select stddev(buyPrice) as standared_dev from products;
-- variance 
select variance(buyPrice) as standared_dev from products;