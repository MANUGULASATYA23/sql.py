create table zomato.student(
id int primary key auto_increment,
name varchar(50) not null,
marks int not null,
collegename varchar(50) not null
);


insert into zomato.student(id,name,marks,collegename)
values(4,'satya',35,'prgcollege'),
(5,'swamy',40,'adarshclg');


insert into zomato.teacher(id,tname,tsubject,temail,tid)
values(17,'swamy','hin','s@gmail.com',4),
(18,'dady','tel','d@gmail.com',null);

alter table zomato.teacher 
modify tid int null;

select * from zomato.student as stu
inner join zomato.teacher as th on stu.id=th.tid;

select * from zomato.student as stu
left join zomato.teacher as th on stu.id=th.tid;

select * from zomato.student as stu
right join zomato.teacher as th on stu.id=th.tid;


create table zomato.teacher(
id int primary key auto_increment,
tname varchar(45) not null,
tsubject varchar(45) not null,
temail varchar(45) null,
tid int not null,
constraint foreign key teacher_student_tid(tid) references zomato.student(id)
);

