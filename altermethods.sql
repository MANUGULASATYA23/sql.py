create table zomato.`user9` (
  id int primary key auto_increment,
  name varchar(45) not null,
  email varchar(50) null,
  phoneno int check(length(phoneno)=10)
  );

alter table zomato.user9
add constraint unique_name unique(name);

alter table zomato.user9
add constraint chk_name_9 check(length(name)>=3);

alter table zomato.user9
drop check chk_name_9;

alter table zomato.user9
drop index unique_name;

alter table zomato.user9 modify name varchar(50) null;

alter table zomato.user9 add column gender varchar(10);

alter table zomato.user9 modify gender varchar(6);

alter table zomato.user9 drop column gender;

select * from zomato.user9;
select * from zomato.useraddress;

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