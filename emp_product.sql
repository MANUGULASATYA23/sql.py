create table employee.product(
id int,
name varchar(45)not null,
address varchar(35)not null
);

create table employee.prdspecification(
id int primary key auto_increment,
pname varchar(35)not null,
pporice varchar(40)not null,
pfeedback varchar(35)not null,
pdiscount varchar(40)not null,
pid int not null
);

alter table employee.product
modify column id int primary key auto_increment;

alter table employee.prdspecification
add constraint fk_prdspecification_product_id foreign key(pid) references product(id);

alter table employee.prdspecification
drop foreign key fk_prdspecification_product_id;

select * from employee.product;

select * from employee.prdspecification;

insert into employee.product(id,name,address)values(1,'satya','bhcbdh');
insert into employee.product(id,name,address)values(2,'swamy','bbgbgf');

insert into employee.prdspecification(pname,pporice,pfeedback,pdiscount,pid)values('sathi','njh','fivestar','twoper',1);
insert into employee.prdspecification(pname,pporice,pfeedback,pdiscount,pid)values('honey','vjg','sixstar','nineper',null);


select * from employee.product as prd
join employee.prdspecification as prdsp on prd.id=prdsp.pid;

select * from employee.product as prd
left join employee.prdspecification as prdsp on prd.id=prdsp.pid;

alter table employee.prdspecification
modify pid int null;

select * from employee.product as prd
right join employee.prdspecification as prdsp on prd.id=prdsp.pid;

select * from employee.product
cross join employee.prdspecification;


select prd.address,prdsp.pfeedback from employee.product as prd
join employee.prdspecification as prdsp on prd.id=prdsp.pid;