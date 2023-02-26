use assignment;
create table students
(
id int primary key auto_increment,
name varchar(265),
age int,
gender varchar(265)
);

insert into students(id,name,age,gender)values(01,"Ajay",21,"Male");
insert into students(name,age,gender)values("Raj",20,"Male");
insert into students(name,age,gender)values("Rio",32,"Female");

select * from students;

update students
set name = "Janet"
where id = 2;


delete from students where id = 3;

select * from students;