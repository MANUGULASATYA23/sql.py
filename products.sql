insert into zomato.product(id,productname,productprice,productfeedback,productdiscount,pincode)
values(1,'abc','twenty','good','min',533430),
(2,'def','fifty','vgood','max',533432);
select * from zomato.product;
update zomato.product set productprice='sixteen' where productname='abc';
delete from zomato.product where pincode='533430';