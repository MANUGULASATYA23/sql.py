create table zomato.user7(
 id int primary key auto_increment,
 name varchar(45) not null,
 mobileno int check(length(mobileno)=10),
 age int check(age>=18)
 );
 
 insert into zomato.user7( name, mobileno,age) values ('satya',1234567890,22);
 
 select * from zomato.user7;