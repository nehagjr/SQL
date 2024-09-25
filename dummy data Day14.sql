use dummy;
create table phone(office int,head int,other int);
insert into phone(office ,head ,other ) values
(34,36,null),
(null,47,49),
(null,null,55),
(66,null,69);
select * from phone;
-- --------------------------------------------------- case ---------------------------------------
#case columnNm
#    when value1 result1
#    when value2 result2
#    when valueN resultN
#    else result
#end

#case
#    when expression then result1
#    when expression1 then result2
#end

# that return customer nm and their corrisponding orders
select customerName,count(orderNumber) from orders
inner join 
customers
using (customerNumber)
group by customerName ;

with cte as 
(select customerName,count(orderNumber) as orderCount from orders
inner join 
customers
using (customerNumber)
group by (customerName )
) 
select customerName ,orderCount,
case orderCount
when 1 then "onetime Customer"
when 2 then "repeated Customer"
when 1 then "frequent Customer"
else "loyal customer"
end as customerType
from cte;



-- to calculatebthe total salesOrder by order_status 
desc orderdetails;
select distinct(status) from orders;
select status,(quantityOrdered*priceEach) as totalSales from
orders inner join orderdetails using (orderNumber) ;

select 
sum(case when status="shipped" then 1 else 0 end) as "Shipped",
sum(case when status="Cancelled" then 1 else 0 end) as "Cancelled",
sum(case when status="Resolved" then 1 else 0 end) as "Resolved",
sum(case when status="On Hold" then 1 else 0 end) as "On Hold",
sum(case when status="Disputed" then 1 else 0 end) as "Disputed",
sum(case when status="In Process" then 1 else 0 end) as "In Process" ,
count(*) as totalorder from orders;

select 
(case when status="shipped" then 1 else 0 end) as "Shipped",
(case when status="Cancelled" then 1 else 0 end) as "Cancelled",
(case when status="Resolved" then 1 else 0 end) as "Resolved",
(case when status="On Hold" then 1 else 0 end) as "On Hold",
(case when status="Disputed" then 1 else 0 end) as "Disputed",
(case when status="In Process" then 1 else 0 end) as "In Process" 
 from orders;
 

with cte as 
(select customerName,count(orderNumber) as orderCount from orders
inner join 
customers
using (customerNumber)
group by (customerName )
) 
select customerName ,orderCount,
if(orderCount=1,"onetime customer",if(orderCount=2,"repeated customer",if(orderCount=3,"frequent customer","LoyalCustomer"))) as customertype
from cte;

select 
if (status="shipped",1,0) as "Shipped",
if (status="Cancelled",1,0) as "Cancelled",
if (status="Resolved",1,0) as "Resolved",
if (status="On Hold",1,0) as "OnHold",
if (status="Disputed",1,0) as "Disputed",
if (status="In Process",1,0) as "InProcess"
from orders;

select 
if (status="shipped",1,0) as "Shipped",
if (status="Cancelled",1,0) as "Cancelled",
if (status="Resolved",1,0) as "Resolved",
if (status="On Hold",1,0) as "OnHold",
if (status="Disputed",1,0) as "Disputed",
if (status="In Process",1,0) as "InProcess",
count(status) as totalorder from orders group by Shipped ,Cancelled,Resolved,OnHold,Disputed,InProcess;

select 
sum( if(status="shipped",1,0)) as "Shipped",
sum(if (status="Cancelled",1,0)) as "Cancelled",
sum(if (status="Resolved",1,0)) as "Resolved",
sum(if (status="On Hold",1,0)) as "OnHold",
sum(if (status="Disputed",1,0)) as "Disputed",
sum(if (status="In Process",1,0)) as "InProcess"
from orders;
