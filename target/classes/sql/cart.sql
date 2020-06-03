create table cart(
userid varchar2(50) not null,   
product_id number not null,         
amount number default 0,
price number,
title varchar2(100)
);

commit;