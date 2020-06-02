create table cart(
cart_id number not null primary key,
userid varchar2(50) not null,   
product_id number not null,         
amount number default 0,
price num);

commit;