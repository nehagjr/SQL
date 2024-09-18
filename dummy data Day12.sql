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