create table zomato.user5(
 id int primary key ,
 name varchar(45) not null,
 mobileno int check(length(mobileno)=10),
 age int check(age>=18)
 );
 
 insert into zomato.user5( id,name, mobileno,age) values (1,'satya',1234567890,22);
 
 select * from zomato.user5;