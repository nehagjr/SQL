use dummy ;
desc customers;
select customerNumber,customerName,city,state from customers where creditLimit>10000 order by customerName desc;

select * from customers where customerName like "a%" or "e%" or "i%" or "o%" or "u%" ;

select * from customers where left(customerName,1) in ("a","e","i","o","u"); 

select * from customers where right(customerName,1) in ("a","e","i","o","u"); 

select * from customers where left(customerName,1) in ("a","e","i","o","u")
 and right(customerName,1) in ("a","e","i","o","u"); 
 
 
 select * from customers where left(customerName,1) not in ("a","e","i","o","u")
 and right(customerName,1) not in ("a","e","i","o","u"); 
 
 
 # limit ====restric the records
# limit---------- return row count

select * from customers limit 10;

select * from customers order by creditLimit desc limit 5;

select * from customers order by creditLimit desc limit 3;

#offset===records kiposition ----indexing
#offset------------ return position
#by default starts 

#2nd 3rd top 
select * from customers order by creditLimit desc limit 2 offset 1;
select * from customers order by creditLimit desc limit 2,1;