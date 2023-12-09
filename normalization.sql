create schema `realestatemgt`;

create table realestatemgt.propertytype(
id int primary key,
type varchar(35)not null,
description varchar(35)
);

create table realestatemgt.property(
id int primary key,
name varchar(40),
dimensions varchar(45),
propertytypeid int,
constraint fk_property_propertytype_propertytypeid foreign key(propertytypeid) references realestatemgt.property(id)
);

create table realestatemgt.address(
id int primary key auto_increment,
street varchar(50)null,
landmark varchar(50)null,
state varchar(45)not null,
country varchar(35)not null,
pincode int
);

create table realestatemgt.addressmapping(
id int primary key,
propertyid int,
addressid int,
constraint fk_propertyaddress_property foreign key(propertyid) references realestatemgt.property(id),
constraint fk_propertyaddress_address foreign key(addressid) references realestatemgt.address(id)
);


insert into realestatemgt.propertytype(id,type,description)values(1,'apartm','good');
insert into realestatemgt.propertytype(id,type,description)values(2,'apartm','bad');


insert into realestatemgt.property(id,name,dimensions,propertytypeid)values(5,'devi','26sqf',1);
insert into realestatemgt.property(id,name,dimensions,propertytypeid)values(6,'ganesh','30sqf',1);


insert into realestatemgt.address(street,landmark,state,country,pincode)values('gantavari','road1','tel','ind',533430);
insert into realestatemgt.address(street,landmark,state,country,pincode)values('gantavari','road1','tel','ind',533430);


insert into realestatemgt.addressmapping(id,propertyid,addressid)values(1,1,2);
insert into realestatemgt.addressmapping(id,propertyid,addressid)values(2,1,1);

select * from realestatemgt.propertytype;
select * from realestatemgt.property;
select * from realestatemgt.address;
select * from realestatemgt.addressmapping;

select * from realestatemgt.propertytype as pt
join realestatemgt.property as p on pt.id=p.propertytypeid;


select * from realestatemgt.propertytype as pt
join realestatemgt.addressmapping as am on pt.id=am.addressid;


select * from realestatemgt.propertytype as pt
join realestatemgt.addressmapping as am on pt.id=am.propertyid;