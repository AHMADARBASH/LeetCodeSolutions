select e.name as Employee from Employee e
where e.salary > (select e1.salary from employee e1 where e1.id = e.managerId)