insert into zomato.user(id,name,email,street,location,city,state,country,pincode)
values(1,'satya','s@gmail.com','abc street','abc colony','hyd','tel','india',500000);


select * from zomato.user;


update zomato.user set state='delhi' where name='SATYA';

delete from zomato.user where id=1;