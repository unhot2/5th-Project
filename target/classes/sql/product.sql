create table product(
product_id number(4) primary key,
title varchar2(200) not null,
price number not null,
category varchar2(20) not null,
subcategory varchar2(20) not null,
imgpath varchar2(200) not null,
thimgpath varchar2(200) not null);
commit;

<-- 상의 부분 -->
insert into product values(1,'부클패브릭 나시탑 가디건 세트 ',22000,'상의','상의','resources/img/outer1info.jpg','resources/img/outer1.jpg');
insert into product values(2,'테일러드카라 베이직 오픈자켓 ',36000,'상의','상의','resources/img/outer2info.jpg','resources/img/outer2.jpg');
insert into product values(3,'시스루 오픈숄 롱가디건',22000,'상의','상의','resources/img/outer3info.jpg','resources/img/outer3.jpg');
insert into product values(4,'러블리 퍼프소매 썸머 반팔 자켓 ',46000,'상의','상의','resources/img/outer4info.jpg','resources/img/outer4.jpg');
insert into product values(5,'진주장식 포인트 반팔 가디건 ',22000,'상의','상의','resources/img/outer5info.jpg','resources/img/outer5.jpg');
insert into product values(6,'버튼클로징 포켓장식 데일리 롱가디건',25000,'상의','상의','resources/img/outer6info.jpg','resources/img/outer6.jpg');
insert into product values(7,'레이스슬립 가디건 세트',31000,'상의','상의','resources/img/outer7info.jpg','resources/img/outer7.jpg');
insert into product values(8,'홑겹 7부 소매배색 자켓',70000,'상의','상의','resources/img/outer8info.jpg','resources/img/outer8.jpg');
insert into product values(9,'루즈핏 후드집업',25000,'상의','상의','resources/img/outer9info.jpg','resources/img/outer9.jpg');
insert into product values(10,'베이직 자켓 ',40000,'상의','상의','resources/img/outer10info.jpg','resources/img/outer10.jpg');
insert into product values(11,'골드버튼 도톰 V넥 니트가디건 ',38000,'상의','상의','resources/img/outer11info.jpg','resources/img/outer11.jpg');
insert into product values(12,'포멀핏 베이직 트렌치코트트 ',116000,'상의','상의','resources/img/outer12info.jpg','resources/img/outer12.jpg');
insert into product values(13,'박시핏 체크 후드 남방 가디건',28700,'상의','상의','resources/img/outer13info.jpg','resources/img/outer13.jpg');
insert into product values(14,'컬러 배색 가디건',33000,'상의','상의','resources/img/outer14info.jpg','resources/img/outer14.jpg');
insert into product values(15,'하이넥 야상 숏 자켓 ',78000,'상의','상의','resources/img/outer15info.jpg','resources/img/outer15.jpg');
insert into product values(16,'골드 버튼 Y넥 니트 가디건 ',30000,'상의','상의','resources/img/outer16info.jpg','resources/img/outer16.jpg');
insert into product values(17,'글렌 체크 더블버튼 자켓 ',51000,'상의','상의','resources/img/outer17info.jpg','resources/img/outer17.jpg');
insert into product values(18,'림핏 캐쥬얼 데님 숏 자켓',46000,'상의','상의','resources/img/outer18info.jpg','resources/img/outer18.jpg');
insert into product values(19,'루즈핏 후드 야상점퍼',77000,'상의','상의','resources/img/outer19info.jpg','resources/img/outer19.jpg');
insert into product values(20,'로맨틱 가디건',34000,'상의','상의','resources/img/outer20info.jpg','resources/img/outer20.jpg');
