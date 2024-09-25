use dummy; 

 -- -----------abs-------absalute
# to give difference of byprice and maximumRtailPrice(MSRP)
desc orderdetails;
select abs(buyPrice-MSRP) from products;

#---------- floor------------ ceil----------
#to find the average manufecture suggested retail (MSRP) price of all product by prodline
select productLine, floor(avg(MSRP)) from products group by productLine;
select productLine, ceil(avg(MSRP)) from products group by productLine;


-- --------------------- mod(divident,diviseor) ----------
-- to determine weither the quantity of product that the customer orderes is even or odd
select orderNumber, if(mod(sum(quantityOrdered),2),"even","odd") as mode  
from orderdetails  group by orderNumber;

with cte as(
select orderNumber, sum(quantityOrdered) as sum ,evenodd 
from orderdetails  group by orderNumber)
select orderNumber, if(mod(sum,2),"even","odd") as evenodd  
from cte;

# to find the details of customers like customer nm city ,stt , country, when ever states is null assign N/A
select customerName ,city, ifnull(state,country),country from customers;
select customerName ,city, coalesce(state,country),country from customers;