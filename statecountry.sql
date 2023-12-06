create table zomato.country(
id int primary key auto_increment,
cname varchar(35) not null,
clan varchar(30) not null,
cpopu int not null
);


select * from zomato.country as couy
right join zomato.state as st on couy.id=st.sid;

select * from zomato.country as couy
left join zomato.state as st on couy.id=st.sid;


alter table zomato.state 
modify sid int null;

insert into zomato.country(id,cname,clan,cpopu)
values(3,'satya','tel',12),
(4,'swamy','ap',15);

insert into zomato.state(id,svillage,smandal,sdistrict,sid)
values(6,'lmp','prt','wg',3),
(7,'utt','krlm','eg',null);


select * from zomato.country as couy
inner join zomato.state as st on couy.id=st.sid;


create table zomato.state(
id int primary key auto_increment,
svillage varchar(45) not null,
smandal varchar(45) not null,
sdistrict varchar(45) null,
sid int not null,
constraint foreign key state_country_sid(sid) references zomato.country(id)
);
