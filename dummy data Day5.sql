# limit ====restric the records
# limit---------- return row count

use dummy;
select * from customers limit 10;

select * from customers order by creditLimit desc limit 5;

select * from customers order by creditLimit desc limit 3;

#offset===records kiposition ----indexing
#offset------------ return position
#by default starts 

#2nd 3rd top 
select * from customers order by creditLimit desc limit 2 offset 1;
select * from customers order by creditLimit desc limit 2,1;