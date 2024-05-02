use FitnessCenter;

insert into Members (name,age, trainer_id)
values('John Smith',35,2);

insert into trainers (name,email)
values ('Emily Johnson','Emily.J@fitness_center.com');

update  workoutsessions
set start_time = '17:00:00', end_time = '19:00:00'
where customer_id = 2;

select * from workoutsessions; 
select * from trainers;
select * from members;

set SQL_SAFE_UPDATEs = 0;
delete from members
WHERE name = "John Smith";
set sql_safe_updates = 1;