use dummy;

select concat("hiii"," ","neha") as fullnm;
-- to get the full nm of employee
desc employees; 
select concat(firstName," ",lastName) as full_nm from employees;

-- concat_ws __________________ ws--->wish saprator
select concat_ws(" ","hiii","neha","patel") as fullnm;

-- to get city state country in a one column tbl from customers 
desc customers;
select concat_ws(", ",city,state,country) as Address from customers;

-- charactor length 
select char_length("length");

-- to get the character count of the product description along with their product nm
desc products;
select productName, char_length(productDescription) from products;

# upper
select lower("Cybrom tech");

# lower
select upper("Cybrom tech");

# trim 
select trim("         Cybrom            tech              ") as nm;

-- ltrim
select ltrim("         Cybrom            tech              ") as nm;

-- rtrim 
select rtrim("         Cybrom            tech              ") as nm;

# left (string, no of char)
# right (string, no of char)
# substring (string, position , no of char)


-- to return the first 50 char of the product desc
-- to find the customer nm starts with vowle
-- to find the customer nm ends with vowel
-- to find the employee full nm starts with vowel and end with vowel

select  productDescription from products where left(productDescription , 50);

select customerName from customers where left(customerName,1) in ("a","e","i","o","u");
    
select customerName from customers where right(customerName,1) in ("a","e","i","o","u");

select concat_ws(" ",firstName,lastName) as FullNm from employees where left(firstName,1) in ("a","e","i","o","u") and right(lastName,1) in ("a","e","i","o","u");

select concat_ws(" ",firstName,lastName) as FullNm from employees where substr(firstName,1,1) in ("a","e","i","o","u") and substr(lastName,-1,1) in ("a","e","i","o","u");

select instr("hiii i am neha"," i ");

-- to find the product whose nm contains car keyword 
-- to find the product nm contains 1900  

select productName from products where instr(productName,"car");
select productName from products where productName like "%car%";

select productName from products where instr(productName,"1900");
select productName from products where productName like "%1900%";
