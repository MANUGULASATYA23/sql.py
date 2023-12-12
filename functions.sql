create table realestatemgt.employee(
id int primary key auto_increment,
name varchar(35) not null,
sal bigint(10) not null,
state varchar(45)not null,
country varchar(50)not null default('india'),
isactive bit default(1)
);

insert into employee(name,sal,state)values('satya','30000','ap');
insert into employee(name,sal,state)values('devi','20000','tel');
insert into employee(name,sal,state)values('swamy','40000','ap');
insert into employee(name,sal,state,country)values('nvaeen','25000','tel','uk');
insert into employee(name,sal,state,country)values('ganesh','45000','ap','usa');
insert into employee(name,sal,state,country)values('pandu','20000','tel','nkorean');

#aggregate functions
select * from employee;
select (id) from employee;
select count(*) from employee;
select count(sal) from employee;
select max(sal) from employee;
select min(sal) from employee;
select sum(sal) from employee;
select avg(sal) from employee;
select count(id) from employee where country='india';
select count(id) from employee where country='usa';
select sal from employee order by (sal) desc;
select sal from employee order by (sal) asc;
select state,count(id) as noofemployees from employee group by state;
select country,count(id) as noofemployees from employee group by country;
select state,country,count(id) as noofemployees from employee group by state,country;
select state,country,count(id) as noofemployees from employee where sal>=30000 group by state,country;
select state,country,count(id) as noofemployees from employee where sal<=30000 group by state,country;
select state,country,count(id) as noofemployees from employee where sal>=30000 group by state,country having count(id)>=2;
select state,country,count(id) as noofemployees from employee where sal>=30000 group by state,country having count(id)<=2;

#string functions
select ltrim(     name)from employee;
select rtrim(name   )from employee;
select length(country)from employee;
select left(name,2) from employee;
select right(name,3) from employee;
select lower(state) from employee;
select upper('neeraj') from dual;

#data fuctions
select current_date();
select now();
select date_add("2023-12-12",interval 10 day);
select current_time();
select current_timestamp();
select year('2023-12-12');
select month('2023-12-12');
select monthname('2023-12-12');
select day('2023-12-12');
select day('2023-01-11');
select dayname('2023-03-11');

#advanced


