create table product(
product_id number(4) primary key,
title varchar2(200) not null,
price number not null,
category varchar2(20) not null,
subcategory varchar2(20) not null,
imgpath varchar2(200) not null,
detailImgpath varchar2(200) not null,
productlike number DEFAULT 0);
commit;

<!--아우터 가디건-->
insert into product values(1,'부클패브릭 나시탑 가디건 세트 ',26000,'아우터','가디건','resources/img/gardigan1.jpg','resources/img/gardigan1info.jpg',0);
insert into product values(2,'버튼클로징 포켓장식 데일리 롱가디건 ',25000,'아우터','가디건','resources/img/gardigan2.jpg','resources/img/gardigan2info.jpg',0);
insert into product values(3,'시스루 오픈숄 롱가디건',22000,'아우터','가디건','resources/img/gardigan3.jpg','resources/img/gardigan3info.jpg',0);
insert into product values(4,'진주장식 포인트 반팔 가디건',22000,'아우터','가디건','resources/img/gardigan4.jpg','resources/img/gardigan4info.jpg',0);
insert into product values(5,'골드버튼 도톰 V넥 니트가디건',38000,'아우터','가디건','resources/img/gardigan5.jpg','resources/img/gardigan5info.jpg',0);
insert into product values(6,'컬러 배색 가디건',33000,'아우터','가디건','resources/img/gardigan6.jpg','resources/img/gardigan6info.jpg',0);
insert into product values(7,'골드 버튼 Y넥 니트 가디건',30000,'아우터','가디건','resources/img/gardigan7.jpg','resources/img/gardigan7info.jpg',0);
insert into product values(8,'로맨틱 가디건',34000,'아우터','가디건','resources/img/gardigan8.jpg','resources/img/gardigan8info.jpg',0);
<!--아우터 자켓-->
insert into product values(9,'테일러드카라 베이직 오픈자켓',36000,'아우터','자켓','resources/img/jarket1.jpg','resources/img/jarket1info.jpg',0);
insert into product values(10,'러블리 퍼프소매 썸머 반팔 자켓',46000,'아우터','자켓','resources/img/jarket2.jpg','resources/img/jarket2info.jpg',0);
insert into product values(11,'홑겹 7부 소매배색 자켓',70000,'아우터','자켓','resources/img/jarket3.jpg','resources/img/jarket3info.jpg',0);
insert into product values(12,'코튼 베이직 자켓',40000,'아우터','자켓','resources/img/jarket4.jpg','resources/img/jarket4info.jpg',0);
insert into product values(13,'하이넥 야상 숏 자켓 ',78000,'아우터','자켓','resources/img/jarket5.jpg','resources/img/jarket5info.jpg',0);
insert into product values(14,'글렌 체크 더블버튼 자켓',51000,'아우터','자켓','resources/img/jarket6.jpg','resources/img/jarket6info.jpg',0);
insert into product values(15,'슬림핏 캐쥬얼 데님 숏 자켓',46000,'아우터','자켓','resources/img/jarket7.jpg','resources/img/jarket7info.jpg',0);
insert into product values(16,'스크래치 데님 포인트 자켓',29000,'아우터','자켓','resources/img/jarket8.jpg','resources/img/jarket8info.jpg',0);
<!--아우터 점퍼-->
insert into product values(17,'루즈핏 후드 야상점퍼',77000,'아우터','점퍼','resources/img/jumper1.jpg','resources/img/jumper1info.jpg',0);
insert into product values(18,'박시핏 체크 후드 남방 점퍼',29000,'아우터','점퍼','resources/img/jumper2.jpg','resources/img/jumper2info.jpg',0);
insert into product values(19,'루즈핏 후드집업',25000,'아우터','점퍼','resources/img/jumper3.jpg','resources/img/jumper3info.jpg',0);
insert into product values(20,'크롭 바람막이 점퍼 세트',56000,'아우터','점퍼','resources/img/jumper4.jpg','resources/img/jumper4info.jpg',0);
insert into product values(21,'하이넥 점퍼 숏팬츠 세트',44000,'아우터','점퍼','resources/img/jumper5.jpg','resources/img/jumper5info.jpg',0);
insert into product values(22,'반하이넥 오버핏 야상점퍼',53000,'아우터','점퍼','resources/img/jumper6.jpg','resources/img/jumper6info.jpg',0);
insert into product values(23,'라인배색 바람막이 점퍼',52000,'아우터','점퍼','resources/img/jumper7.jpg','resources/img/jumper7info.jpg',0);
insert into product values(24,'새틴 광채 블루종 점퍼',64000,'아우터','점퍼','resources/img/jumper8.jpg','resources/img/jumper8info.jpg',0);
<!--아우터 코트-->
insert into product values(25,'포멀핏 베이직 트렌치코트',116000,'아우터','코트','resources/img/coat1.jpg','resources/img/coat1info.jpg',0);
insert into product values(26,'더블 버튼 루즈핏 트렌치코트',94000,'아우터','코트','resources/img/coat2.jpg','resources/img/coat2info.jpg',0);
insert into product values(27,'백라인 쉬폰 트렌치코트',42000,'아우터','코트','resources/img/coat3.jpg','resources/img/coat3info.jpg',0);
insert into product values(28,'더블 버튼 롱 벨트 트렌치 코트',100000,'아우터','코트','resources/img/coat4.jpg','resources/img/coat4info.jpg',0);
insert into product values(29,'베이직라인 루즈핏 레글런 코트',80000,'아우터','코트','resources/img/coat5.jpg','resources/img/coat5info.jpg',0);
insert into product values(30,'백 플리츠 트렌치 코트',90000,'아우터','코트','resources/img/coat6.jpg','resources/img/coat6info.jpg',0);
insert into product values(31,'레이스 소매 트렌치 코트',68000,'아우터','코트','resources/img/coat7.jpg','resources/img/coat7info.jpg',0);
insert into product values(32,'소매롤업 단추 트렌치 코트',30000,'아우터','코트','resources/img/coat8.jpg','resources/img/coat8info.jpg',0);
<!--드레스-->
insert into product values(33,'플로럴 쉬폰 롱원피스',28000,'드레스','드레스','resources/img/dress1.jpg','resources/img/dress1info.jpg',0);
insert into product values(34,'캉캉플레어 백리본 원피스',40000,'드레스','드레스','resources/img/dress2.jpg','resources/img/dress2info.jpg',0);
insert into product values(35,'반팔 이지룩 밴딩 롱원피스',27000,'드레스','드레스','resources/img/dress3.jpg','resources/img/dress3info.jpg',0);
insert into product values(36,'플라워 레이스 패턴 반팔 원피스',26000,'드레스','드레스','resources/img/dress4.jpg','resources/img/dress4info.jpg',0);
insert into product values(37,'슬리브리스 미니원피스',18000,'드레스','드레스','resources/img/dress5.jpg','resources/img/dress5info.jpg',0);
insert into product values(38,'리본스트랩 데일리 롱원피스',22000,'드레스','드레스','resources/img/dress6.jpg','resources/img/dress6info.jpg',0);
insert into product values(39,'린넨 테일러드카라 미니원피스',69000,'드레스','드레스','resources/img/dress7.jpg','resources/img/dress7info.jpg',0);
insert into product values(40,'플라워패턴 퍼프소매 롱원피스',34000,'드레스','드레스','resources/img/dress8.jpg','resources/img/dress8info.jpg',0);
<!--상의 블라우스-->
insert into product values(41,'레이스 블라우스',22000,'상의','블라우스','resources/img/blouse1.jpg','resources/img/blouse1info.jpg',0);
insert into product values(42,'핀턱 소매 블라우스',35000,'상의','블라우스','resources/img/blouse2.jpg','resources/img/blouse2info.jpg',0);
insert into product values(43,'프릴 트리밍 포인트 블라우스',21000,'상의','블라우스','resources/img/blouse3.jpg','resources/img/blouse3info.jpg',0);
insert into product values(44,'플라워 패턴 리본 반팔 블라우스',34000,'상의','블라우스','resources/img/blouse4.jpg','resources/img/blouse4info.jpg',0);
insert into product values(45,'퍼프소매 레이스 블라우스',22000,'상의','블라우스','resources/img/blouse5.jpg','resources/img/blouse5info.jpg',0);
insert into product values(46,'나팔소매 쉬폰 배색 블라우스',31000,'상의','블라우스','resources/img/blouse6.jpg','resources/img/blouse6info.jpg',0);
insert into product values(47,'시스루 크롭 요루쉬폰 블라우스',30000,'상의','블라우스','resources/img/blouse7.jpg','resources/img/blouse7info.jpg',0);
insert into product values(48,'플라워 레이스 나시 블라우스',21000,'상의','블라우스','resources/img/blouse8.jpg','resources/img/blouse8info.jpg',0);
<!--상의 티셔츠-->
insert into product values(49,'하트넥 골지 반팔 티셔츠',18000,'상의','티셔츠','resources/img/tshirt1.jpg','resources/img/tshirt1info.jpg',0);
insert into product values(50,'V넥 슬립 나시티',16000,'상의','티셔츠','resources/img/tshirt2.jpg','resources/img/tshirt2info.jpg',0);
insert into product values(51,'레터링 코튼 세미크롭티셔츠',16000,'상의','티셔츠','resources/img/tshirt3.jpg','resources/img/tshirt3info.jpg',0);
insert into product values(52,'포인트 루즈 반팔 티셔츠',14000,'상의','티셔츠','resources/img/tshirt4.jpg','resources/img/tshirt4info.jpg',0);
insert into product values(53,'원포인트 반팔 티셔츠',22000,'상의','티셔츠','resources/img/tshirt5.jpg','resources/img/tshirt5info.jpg',0);
insert into product values(54,'레터링 슬림핏 티셔츠',20000,'상의','티셔츠','resources/img/tshirt6.jpg','resources/img/tshirt6info.jpg',0);
insert into product values(55,'후르츠 포인트 코튼 티셔츠',26000,'상의','티셔츠','resources/img/tshirt7.jpg','resources/img/tshirt7info.jpg',0);
insert into product values(56,'츄잉 컬러배색 포인트 반팔 티셔츠',14000,'상의','티셔츠','resources/img/tshirt8.jpg','resources/img/tshirt8info.jpg',0);
<!--상의 니트-->
insert into product values(57,'스퀘어넥 5부 골지 니트',22000,'상의','니트','resources/img/knit1.jpg','resources/img/knit1info.jpg',0);
insert into product values(58,'골지라인 반팔 니트 티셔츠',16000,'상의','니트','resources/img/knit2.jpg','resources/img/knit2info.jpg',0);
insert into product values(59,'버튼포인트 양면 니트웨어',28000,'상의','니트','resources/img/knit3.jpg','resources/img/knit3.nfo.jpg',0);
insert into product values(60,'뜨개 패턴 퍼프소매 반팔니트',25000,'상의','니트','resources/img/knit4.jpg','resources/img/knit4info.jpg',0);
insert into product values(61,'골지 입술넥 나시 니트탑',30000,'상의','니트','resources/img/knit5.jpg','resources/img/knit5info.jpg',0);
insert into product values(62,'루즈핏 브이넥 니트탑',33000,'상의','니트','resources/img/knit6.jpg','resources/img/knit6info.jpg',0);
insert into product values(63,'스판 브라캡 니트나시',14000,'상의','니트','resources/img/knit7.jpg','resources/img/knit7info.jpg',0);
insert into product values(64,'골지 썸머니트티',20000,'상의','니트','resources/img/knit8.jpg','resources/img/knit8info.jpg',0);
