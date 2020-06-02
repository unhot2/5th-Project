create table product(
product_id number(4) primary key,
title varchar2(200) not null,
price number not null,
category varchar2(20) not null,
subcategory varchar2(20) not null,
imgpath varchar2(200) not null);

insert into product values(1,'빨간티셔츠', 54000, '상의','티셔츠','resources/img/top/ts/ts1.gif');
insert into product values(2,'하얀티셔츠', 32000, '상의','티셔츠','resources/img/top/ts/ts2.gif');
insert into product values(3,'검은티셔츠', 34000, '상의','티셔츠','resources/img/top/ts/ts3.gif');
insert into product values(4,'초록티셔츠', 30000, '상의','티셔츠','resources/img/top/ts/ts4.gif');
insert into product values(5,'블라우스', 50000, '상의','블라우스','resources/img/top/blouse/bs1.gif');
insert into product values(6,'하얀면바지', 58000, '하의','면바지','resources/img/pant/cotton/cott1.gif');
insert into product values(7,'분홍면바지', 58000, '하의','면바지','resources/img/pant/cotton/cott2.gif');
insert into product values(8,'검은면바지', 58000, '하의','면바지','resources/img/pant/cotton/cott3.gif');
insert into product values(9,'연한청바지', 58000, '하의','청바지','resources/img/pant/jean/jean1.gif');
insert into product values(10,'진한청바지', 48000, '하의','청바지','resources/img/pant/jean/jean2.gif');
insert into product values(11,'연청코트', 126000, '아우터','코트','resources/img/outer/coat/coat1.gif');
insert into product values(12,'갈색코트', 126000, '아우터','코트','resources/img/outer/coat/coat2.gif');
insert into product values(13,'베이지색코트', 126000, '아우터','코트','resources/img/outer/coat/coat3.gif');
insert into product values(14,'떡볶이코트', 126000, '아우터','코트','resources/img/outer/coat/coat4.gif');
insert into product values(15,'공항점퍼', 135000, '아우터','점퍼','resources/img/outer/jump/jump1.gif');
insert into product values(16,'야구모자', 34000, '악세서리','모자','resources/img/acc/hat/hat1.gif');
insert into product values(17,'비니', 30000, '악세서리','모자','resources/img/acc/hat/hat2.gif');
insert into product values(18,'버킷햇', 48000, '악세서리','모자','resources/img/acc/hat/hat3.gif');
insert into product values(19,'베레모', 56000, '악세서리','모자','resources/img/acc/hat/hat4.gif');
insert into product values(20,'안경', 92000, '악세서리','안경','resources/img/acc/glas/glas1.gif');


commit;