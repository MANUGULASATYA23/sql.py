create schema employee;

create table employee.user(
 id int primary key auto_increment,
 name varchar(45) not null
 );
 
 
 create table employee.userorder(
  id int primary key auto_increment,
  street varchar(40) not null,
  location varchar(35) not null,
  city varchar(25) not null,
  state varchar(30) not null,
  uoid int not null,
  constraint fk_userorder_user_id foreign key(uoid) references employee.user(id)
  );
  
select * from employee.user;
 
select * from employee.userorder; 

 insert into employee.user(name)values('satya');
 insert into employee.user(name)values('swamy');
 
 
 insert into employee.userorder(street,location,city,state,uoid)values('ganta','lmp','prt','eg',1);
 insert into employee.userorder(street,location,city,state,uoid)values('gampa','utt','klm','wg',null);
 
 select * from employee.user as usr
 join employee.userorder as usrod on usr.id=usrod.uoid;
 
 
 select * from employee.user as usr
 left join employee.userorder as usrod on usr.id=usrod.uoid;
 
 alter table employee.userorder
 modify uoid int null;
 
 select * from employee.user as usr
 right join employee.userorder as usrod on usr.id=usrod.uoid;
 
 select * from employee.user
 cross join employee.userorder;