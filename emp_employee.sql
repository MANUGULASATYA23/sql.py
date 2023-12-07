create table employee.employee(
id int primary key auto_increment,
name varchar(45) not null,
email varchar(30)not null
);

create table employee.empaddress(
id int primary key auto_increment,
street varchar(45)not null,
city varchar(30) not null,
mandal varchar(40)not null,
state varchar(35)not null,
country varchar(35)not null,
empaddid int not null,
constraint fk_empaddress_employee_id foreign key(empaddid) references employee.employee(id)
);

select * from employee.employee;

select * from employee.empaddress;

insert into employee.employee(name,email)values('naveen','n@gmail.com');
insert into employee.employee(name,email)values('radha','r@gmail.com');
insert into employee.employee(name,email)values('bujji','b@gmail.com');


insert into employee.empaddress(street,city,mandal,state,country,empaddid)values('abc','lmp','prt','eg','ap',1);
insert into employee.empaddress(street,city,mandal,state,country,empaddid)values('bcd','utt','klm','eg','tel',2);
insert into employee.empaddress(street,city,mandal,state,country,empaddid)values('cde','ps','jgm','wg','ap',null);

select * from employee.employee as emp
inner join employee.empaddress as eadd on emp.id=eadd.empaddid;


select * from employee.employee as emp
left join employee.empaddress as eadd on emp.id=eadd.empaddid;

alter table employee.empaddress
modify empaddid int null;


select * from employee.employee as emp
right join employee.empaddress as eadd on emp.id=eadd.empaddid;

select * from employee.employee
cross join employee.empaddress;

select emp.id,eadd.street from employee.employee as emp
join employee.empaddress as eadd on emp.id=eadd.empaddid;