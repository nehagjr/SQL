use dummy;

# to return cuntry nm if state is null (cust nm, cust number)
select customerNumber,customerName,state from customers;
select customerNumber,customerName,if(state is null,country,state) as States from customers;
select customerNumber,customerName,ifnull(state,country) as States from customers;
select customerNumber,customerName,coalesce(state,country) as States from customers;


# date function
select curdate();
select current_date();

select now();
select sysdate();

select sysdate(),sleep(10),sysdate();
select now(),sleep(10),now();