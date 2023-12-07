create table employee.country(
id int, 
name varchar(45) not null,
lan varchar(30)not null
);
create table employee.state(
id int primary key auto_increment,
village varchar(35) not null,
city varchar(45)not null,
mandal varchar(40)not null,
district varchar(45) not null,
cid int not null
);

alter table employee.country 
modify column id int primary key auto_increment;

alter table employee.state
add constraint fk_state_country_id foreign key (cid) references state(id);

alter table employee.state
drop foreign key fk_state_country_id;

alter table employee.state modify cid int null;

select * from employee.country;

select * from employee.state;

insert into employee.country(id,name,lan) values(3,'satya','tal');
insert into employee.country(id,name,lan) values(4,'naga','hin');


insert into employee.state(village,city,mandal,district,cid) values('lmp','prt','klm','eg',3);
insert into employee.state(village,city,mandal,district,cid) values('ps','utt','jmp','wg',null);

select * from employee.country as ctry
inner join employee.state as ste on ctry.id=ste.cid;

select * from employee.country as ctry
left join employee.state as ste on ctry.id=ste.cid;

select * from employee.student
cross join employee.teacher;


select std.name,tch.tsubject from employee.student as std
join employee.teacher as tch on std.id=tch.tid;

select * from employee.country as ctry
right join employee.state as ste on ctry.id=ste.cid;