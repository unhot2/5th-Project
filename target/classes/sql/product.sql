create table product(
title varchar2(200) not null,
price number not null,
category varchar2(20) not null,
subcategory varchar2(20) not null,
imgpath varchar2(200) not null);

insert into product values('빨간티셔츠', 54000, '상의','티셔츠','resources/top/ts/ts1');
insert into product values('하얀티셔츠', 32000, '상의','티셔츠','resources/top/ts/ts2');
insert into product values('검은티셔츠', 34000, '상의','티셔츠','resources/top/ts/ts3');
insert into product values('초록티셔츠', 30000, '상의','티셔츠','resources/top/ts/ts4');
insert into product values('블라우스', 50000, '상의','블라우스','resources/top/bs/bs1');
insert into product values('하얀면바지', 58000, '바지','면바지','resources/top/pant/cotton/cott1');
insert into product values('분홍면바지', 58000, '바지','면바지','resources/top/pant/cotton/cott2');
insert into product values('검은면바지', 58000, '바지','면바지','resources/top/pant/cotton/cott3');
insert into product values('연한청바지', 58000, '바지','청바지','resources/top/pant/cotton/jean1');
insert into product values('진한청바지', 48000, '바지','청바지','resources/top/pant/jean/jean2');
insert into product values('연청코트', 126000, '아우터','코트','resources/top/outer/coat/coat1');
insert into product values('갈색코트', 126000, '아우터','코트','resources/top/outer/coat/coat2');
insert into product values('베이지색코트', 126000, '아우터','코트','resources/top/outer/coat/coat3');
insert into product values('떡볶이코트', 126000, '아우터','코트','resources/top/outer/coat/coat4');
insert into product values('공항점퍼', 135000, '아우터','점퍼','resources/top/outer/jump/jump1');
insert into product values('야구모자', 34000, '악세서리','모자','resources/top/acc/hat/hat1');
insert into product values('비니', 30000, '악세서리','모자','resources/top/acc/hat/hat2');
insert into product values('버킷햇', 48000, '악세서리','모자','resources/top/acc/hat/hat3');
insert into product values('베레모', 56000, '악세서리','모자','resources/top/acc/hat/hat4');
insert into product values('안경', 92000, '악세서리','안경','resources/top/acc/glas/glas1');


commit;