create table cart(
cart_id number not null primary key,
userid varchar2(50) not null,   
product_id number not null,         
amount number default 0             
);

create sequence cart_seq
start with 1
increment by 1;

insert into cart (cart_id, userid, product_id, amount)values (seq_cart.nextval, '아이디쓰세요', 1, 5 );

commit;