-- SQLBook: Code
CREATE DATABASE Employee;

CREATE TABLE Departments (
      department_id INT auto_increment PRIMARY KEY,
      department_name VARCHAR(100) NOT NULL
    );
    
CREATE TABLE Employees (
      employee_id INT auto_increment PRIMARY KEY,
      name VARCHAR(100) NOT NULL,
      age INT NOT NULL,
      department_id INT NOT NULL,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
insert into Departments (department_name)
values ('Management'),('Accounting'),('Billing'),('I.T.'),('Shipping');

insert into Employees (name,age,department_id)
values ('Daniel Durant',29,1),
('Caleb Johnson',28,2),
('Jane Doe',45,4),
('Bob Thomas', 23,3),
('Kristen Witek',32,2),
('Jenny Thomas',49,1),
('Tim Haas',21,4),
('Austin Bow',18,4),
('Jessica Ruby',34,4),
('Mason Ward',53,3);

select distinct d.department_name, e.department_id
from employees as e
join departments as d
on e.department_id = d.department_id;

select count(e.department_id), d.department_name
from employees as e
join departments as d
on e.department_id = d.department_id
group by d.department_name;


select e.age , e.name ,e.department_id,d.department_name 
from employees as e
join departments as d
on e.department_id = d.department_id
where age between 25 and 30;




select * from Employees;
select * from Departments;