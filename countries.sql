insert into zomato.countries(id,countriesname,countrieslan,countriespopul,pincode)
values(3,'india','all lang',90,533430),
(2,'usa','english',80,533432);
select * from zomato.countries;
update zomato.countries set countriesname='uk' where countrieslan='english';
delete from zomato.countries where id=2;