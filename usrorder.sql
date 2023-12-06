create table zomato.users(
 id int primary key,
 name varchar(45) not null,
 email varchar(50) not null,
 pincode int check(length(pincode)=6)
);

select * from zomato.users as usrs
right join zomato.usersorder as usrsadd on usrs.id=usrsadd.usersid;

alter table zomato.usersorder
modify usersid int null;


select * from zomato.users as usrs
left join zomato.usersorder as usrsadd on usrs.id=usrsadd.usersid;

insert into zomato.usersorder(id,usersstreet,userslocation,userscity,usersstate,usersid)
values(10,'abcd','hud','lmp','tel',null),
(11,'bcde','vzg','utt','ap',null);

insert into zomato.users(id,name,email,pincode)values(14,'satya','s@gmail.com',533430),(15,'amma','a@gmail.com',533431);

select * from zomato.users as usrs
inner join zomato.usersorder as usrsadd on usrs.id=usrsadd.usersid;

create table zomato.usersorder (
  id int primary key auto_increment,
  usersstreet varchar(45) not null,
  userslocation varchar(50)not null,
  userscity varchar(50)not null ,
  usersstate varchar(50)not null,
  usersid int not null,
  constraint foreign key usersorder_users_usersid(usersid) references zomato.users(id)
  );