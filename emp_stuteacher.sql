create table employee.student(
id int,
name varchar(45)not null,
email varchar(35)not null
);

create table employee.teacher(
id int primary key auto_increment,
tname varchar(35)not null,
tsubject varchar(40)not null,
temail varchar(35)not null,
tid int not null
);

alter table employee.student
modify column id int primary key auto_increment;

alter table employee.teacher
add constraint fk_teacher_student_id foreign key(tid) references student(id);

alter table employee.teacher
drop foreign key fk_teacher_student_id;

select * from employee.student;

select * from employee.teacher;

insert into employee.student(id,name,email)values(1,'satya','s@gmail.com');
insert into employee.student(id,name,email)values(2,'devi','d@gmail.com');
insert into employee.student(id,name,email)values(3,'frh','f@gmail.com');

insert into employee.teacher(tname,tsubject,temail,tid)values('sathi','tel','g@gmail.com',1);
insert into employee.teacher(tname,tsubject,temail,tid)values('honey','vjg','n@gmail.com',null);


select * from employee.student as std
join employee.teacher as tch on std.id=tch.tid;

select * from employee.student as std
left join employee.teacher as tch on std.id=tch.tid;

alter table employee.teacher
modify tid int null;

select * from employee.student as std
right join employee.teacher as tch on std.id=tch.tid;

select * from employee.student
cross join employee.teacher;


select std.name,tch.tsubject from employee.student as std
join employee.teacher as tch on std.id=tch.tid;