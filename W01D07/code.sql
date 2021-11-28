use company;

show tables;

select * from employee;

select max(salary) from employee group by branch_id;

select branch_id,max(salary) from employee group by branch_id;