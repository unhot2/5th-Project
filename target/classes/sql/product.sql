create table product(
title varchar2(200) not null,
price number not null,
category varchar2(20) not null,
subcategory varchar2(20) not null,
imgpath varchar2(200) not null);

insert into product values('소녀나라', 26000, '상의','티셔츠','resources/top/yyj_1');

commit;