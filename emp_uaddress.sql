create table employee.user1(
id int primary key auto_increment,
name varchar(30) not null,
email varchar(45) not null
);

create table employee.useraddress(
id int primary key auto_increment,
colony varchar(40)not null,
village varchar(45)not null,
mandal varchar(35)not null,
uaddid int not null,
constraint fk_useraddress_user1_id foreign key(uaddid) references employee.user1(id)
);

select * from employee.user1
cross join employee.useraddress;

select * from employee.user1 as usr
right join employee.useraddress as usadd on usr.id=usadd.uaddid;

alter table employee.useraddress
modify uaddid int null;

select * from employee.user1 as usr
left join employee.useraddress as usadd on usr.id=usadd.uaddid;


select * from employee.user1 as usr
join employee.useraddress as usadd on usr.id=usadd.uaddid;

insert into employee.useraddress(colony,village,mandal,uaddid)values('abc','lmp','eg',1);
insert into employee.useraddress(colony,village,mandal,uaddid)values('bcd','prt','eg',null);

insert into employee.user1(name,email)values('neeraja','@gmail.com');
insert into employee.user1(name,email)values('satya','s@gmail.com');

select * from employee.useraddress;

select * from employee.user1;