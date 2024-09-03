use dummy;

select * from 
employees e
left join 
customers c 
on e.employeenumber=c.salesRepEmployeeNumber
where c.salesRepEmployeeNumber is null;