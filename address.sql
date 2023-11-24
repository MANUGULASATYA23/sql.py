insert into zomato.address(id,street,city,state,country,pincode)
values(1,'abc street','hyd','tel','india',500000),
(2,'bcd street','rjy','ap','india','500002');


select * from zomato.address;
update zomato.address set street='def' where city='hyd';
delete from zomato.address where id=1;




