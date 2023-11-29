create table zomato.user6(
id int primary key,
name varchar(45) not null,
state varchar(20) not null,
country varchar(20) default('India')
);

insert into zomato.user6(id,name,state)values(1,'satya','ap');

select * from zomato.user6;