create table zomato.`user9` (
  id int primary key,
  name varchar(45) not null,
  email varchar(50) not null,
  phoneno int check(length(phoneno)=10)
  );

alter table zomato.useraddress
modify userid int null;
  
select * from zomato.user9 as usr
inner join zomato.useraddress as usradd on usr.id=usradd.userid;
  
select * from zomato.user9 as usr
right join zomato.useraddress as usradd on usr.id=usradd.userid;


  
select * from zomato.user9 as usr
left join zomato.useraddress as usradd on usr.id=usradd.userid;

insert into zomato.useraddress(id,street,location,city,state,country,userid)
values(8,'abc','bds','lmp','ap','ind',1),
(7,'dh','ndb','bd','df','us',null);


insert into zomato.user9(id,name,email,phoneno)values(2,'satya','s@gmail.com',1234567890),(3,'devi','d@gmail.com',1234567890);

create table zomato.useraddress (
  id int primary key auto_increment,
  street varchar(45) not null,
  location varchar(50)not null,
  city varchar(50)not null ,
  state varchar(50)not null,
  country varchar(10)default('india'),
  userid int not null,
  constraint foreign key useraddress_user_userid(userid) references zomato.user9(id)
  );