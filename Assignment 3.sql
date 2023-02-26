use assignment;
create table salesperson
(
salesman_id int primary key,
s_name varchar(265),
city varchar(265),
commission float
);

create table customer
(
customer_id int,
cust_name varchar(265),
c_city varchar(265),
grade int,
salesman_id int,
foreign key (salesman_id) references salesperson(salesman_id)
);

insert into salesperson(salesman_id,s_name,city,commission)values(5001,"James Hoog","New York",0.15);
insert into salesperson(salesman_id,s_name,city,commission)values(5002,"Nail Knite","Paris",0.13);
insert into salesperson(salesman_id,s_name,city,commission)values(5005,"Pit Alex","London",0.11);
insert into salesperson(salesman_id,s_name,city,commission)values(5006,"Mc Lyon","Paris",0.14);
insert into salesperson(salesman_id,s_name,city,commission)values(5007,"Paul Adam","Rome",0.13);
insert into salesperson(salesman_id,s_name,city,commission)values(5003,"Lauson Hen","San Jose",0.12);
select * from salesperson;

insert into customer(customer_id,cust_name,c_city,grade,salesman_id)values(3002,"Nick Rimando","New York",100,5001);
insert into customer(customer_id,cust_name,c_city,grade,salesman_id)values(3007,"Brad Davis","New York",200,5001);
insert into customer(customer_id,cust_name,c_city,grade,salesman_id)values(3005,"Graham Zusi","California",200,5002);
insert into customer(customer_id,cust_name,c_city,grade,salesman_id)values(3008,"Julian Green","London",300,5002);
insert into customer(customer_id,cust_name,c_city,grade,salesman_id)values(3004,"Fabian Johnson","Paris",300,5006);
insert into customer(customer_id,cust_name,c_city,grade,salesman_id)values(3009,"Geoff Cameron","Berlin",100,5003);
insert into customer(customer_id,cust_name,c_city,grade,salesman_id)values(3003,"Jozy Altidor","Moscow",200,5007);
insert into customer(customer_id,cust_name,c_city,salesman_id)values(3001,"Brad Guzan","London",5005);
select * from customer;


select s_name,cust_name,city
from salesperson,customer
where city=c_city;