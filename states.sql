insert into zomato.statesstates(id,village,mandal,district,state,pincode)
values(1,'lampakalova','prathipadu','east godavari','ap',533430),
(2,'uttara','eleswa','north godavari','rs',533432);
select * from zomato.states;
update zomato.states set district='westgodavari' where mandal='prathipadu';
delete from zomato.states where id=1;



