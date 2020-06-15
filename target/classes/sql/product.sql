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

<!--하의 와이드팬츠-->
insert into product values(65,'주름 밴딩 와이드 팬츠',12000,'하의','와이드팬츠','resources/img/wide1.jpg','resources/img/wide1info.jpg',0);
insert into product values(66,'썸머 하이웨스트 와이드 팬츠',18000,'하의','와이드팬츠','resources/img/wide2.jpg','resources/img/wide2info.jpg',0);
insert into product values(67,'니트 와이드 팬츠',18900,'하의','와이드팬츠','resources/img/wide3.jpg','resources/img/wide3info.jpg',0);
insert into product values(68,'쿨 와이드 밴딩 팬츠',11000,'하의','와이드팬츠','resources/img/wide4.jpg','resources/img/wide4info.jpg',0);
insert into product values(69,'린넨 벨티드 핀턱 롱 팬츠',50000,'하의','와이드팬츠','resources/img/wide5.jpg','resources/img/wide5info.jpg',0);
insert into product values(70,'와이드핏 핀턱 와이드팬츠',44000,'하의','와이드팬츠','resources/img/wide6.jpg','resources/img/wide6info.jpg',0);
insert into product values(71,'리본 스트랩 린넨 와이드 팬츠',28000,'하의','와이드팬츠','resources/img/wide7.jpg','resources/img/wide7info.jpg',0);
insert into product values(72,'베이직 밴딩 와이드 팬츠',20000,'하의','와이드팬츠','resources/img/wide8.jpg','resources/img/wide8info.jpg',0);

<!--하의 면바지-->
insert into product values(73,'히든밴딩 세미부츠컷 팬츠',26000,'하의','면바지','resources/img/cotten1.jpg','resources/img/cotten1info.jpg',0);
insert into product values(74,'슬림일자핏 사이드슬릿 코튼 팬츠',29000,'하의','면바지','resources/img/cotten2.jpg','resources/img/cotten2info.jpg',0);
insert into product values(75,'슬림 일자핏 데일리 9부팬츠',26000,'하의','면바지','resources/img/cotten3.jpg','resources/img/cotten3info.jpg',0);
insert into product values(76,'하이웨이스트 코튼 숏 팬츠',24000,'하의','면바지','resources/img/cotten4.jpg','resources/img/cotten4info.jpg',0);
insert into product values(77,'일자핏 베이직 9부 코튼 팬츠',30000,'하의','면바지','resources/img/cotten5.jpg','resources/img/cotten5info.jpg',0);
insert into product values(78,'밴딩 와이드 코튼팬츠',25000,'하의','면바지','resources/img/cotten6.jpg','resources/img/cotten6info.jpg',0);
insert into product values(79,'하이웨스트 숏 코튼 팬츠',24000,'하의','면바지','resources/img/cotten7.jpg','resources/img/cotten7info.jpg',0);
insert into product values(80,'핀턱 포인트 코튼팬츠',38000,'하의','면바지','resources/img/cotten8.jpg','resources/img/cotten8info.jpg',0);

<!--하의 점프슈트-->
insert into product values(81,'뷔스티에 와이드핏 점프슈트',28000,'하의','점프슈트','resources/img/jumpsuit1.jpg','resources/img/jumpsuit1info.jpg',0);
insert into product values(82,'멜빵5부 팬츠 점프슈트',20000,'하의','점프슈트','resources/img/jumpsuit2.jpg','resources/img/jumpsuit2info.jpg',0);
insert into product values(83,'멜빵디자인 점프슈트',38000,'하의','점프슈트','resources/img/jumpsuit3.jpg','resources/img/jumpsuit3info.jpg',0);
insert into product values(84,'리본 포인트 루즈핏 점프수트',30000,'하의','점프슈트','resources/img/jumpsuit4.jpg','resources/img/jumpsuit4info.jpg',0);
insert into product values(85,'데님 카라 점프수트',41000,'하의','점프슈트','resources/img/jumpsuit5.jpg','resources/img/jumpsuit5info.jpg',0);
insert into product values(86,'퍼프 숄더 점프수트',43000,'하의','점프슈트','resources/img/jumpsuit6.jpg','resources/img/jumpsuit6info.jpg',0);
insert into product values(87,'요루 프릴탑 와이드 점프수트',39000,'하의','점프슈트','resources/img/jumpsuit7.jpg','resources/img/jumpsuit7info.jpg',0);
insert into product values(88,'서스펜더 점프슈트',53000,'하의','점프슈트','resources/img/jumpsuit8.jpg','resources/img/jumpsuit8info.jpg',0);

<!--하의 청바지-->
insert into product values(89,'히든밴딩 일자핏 데님팬츠',32000,'하의','청바지','resources/img/denim1.jpg','resources/img/denim1info.jpg',0);
insert into product values(90,'슬릿 데님팬츠',34000,'하의','청바지','resources/img/denim2.jpg','resources/img/denim2info.jpg',0);
insert into product values(91,'하이웨이스트 투버튼 숏팬츠',27000,'하의','청바지','resources/img/denim3.jpg','resources/img/denim3info.jpg',0);
insert into product values(92,'히든 밴딩 일자핏 데님 팬츠',30000,'하의','청바지','resources/img/denim4.jpg','resources/img/denim4info.jpg',0);
insert into product values(93,'슬릿 세미와이드핏 데님 팬츠',33000,'하의','청바지','resources/img/denim5.jpg','resources/img/denim5info.jpg',0);
insert into product values(94,'착붙핏 9부 스키니 청바지',38000,'하의','청바지','resources/img/denim6.jpg','resources/img/denim6info.jpg',0);
insert into product values(95,'슬림핏 스키니 데님 팬츠',28000,'하의','청바지','resources/img/denim7.jpg','resources/img/denim7info.jpg',0);
insert into product values(96,'스판 패브릭 연청 스키니 데님팬츠',30000,'하의','청바지','resources/img/denim8.jpg','resources/img/denim8info.jpg',0);

<!--하의 슬랙스-->
insert into product values(97,'슬림 일자 슬랙스',34000,'하의','슬랙스','resources/img/slacks1.jpg','resources/img/slacks1info.jpg',0);
insert into product values(98,'와이드핏 데일리 롱슬랙스',31000,'하의','슬랙스','resources/img/slacks2.jpg','resources/img/slacks2info.jpg',0);
insert into product values(99,'와이드핏  슬랙스진',36000,'하의','슬랙스','resources/img/slacks3.jpg','resources/img/slacks3info.jpg',0);
insert into product values(100,'베이직 일자핏 슬랙스팬츠',22000,'하의','슬랙스','resources/img/slacks4.jpg','resources/img/slacks4info.jpg',0);
insert into product values(101,'데일리 일자핏 슬랙스',29000,'하의','슬랙스','resources/img/slacks5.jpg','resources/img/slacks5info.jpg',0);
insert into product values(102,'핀턱 와이드 슬랙스',32000,'하의','슬랙스','resources/img/slacks6.jpg','resources/img/slacks6info.jpg',0);
insert into product values(103,'5부 스판 슬랙스',39000,'하의','슬랙스','resources/img/slacks7.jpg','resources/img/slacks7info.jpg',0);
insert into product values(104,'슬림베이직핏 슬랙스팬츠',22000,'하의','슬랙스','resources/img/slacks8.jpg','resources/img/slacks8info.jpg',0);

<!--스커트-->
insert into product values(105,'미니 슬릿 스커트',36000,'스커트','스커트','resources/img/skirt1.jpg','resources/img/skirt1info.jpg',0);
insert into product values(106,'데님 큐롯 스커트',34000,'스커트','스커트','resources/img/skirt2.jpg','resources/img/skirt2info.jpg',0);
insert into product values(107,'랩디테일 밴딩 치마바지',30000,'스커트','스커트','resources/img/skirt3.jpg','resources/img/skirt3info.jpg',0);
insert into product values(108,'더블버튼 A라인 큐롯팬츠',37000,'스커트','스커트','resources/img/skirt4.jpg','resources/img/skirt4info.jpg',0);
insert into product values(109,'사이드 랩 팬츠 스커트',26000,'스커트','스커트','resources/img/skirt5.jpg','resources/img/skirt5info.jpg',0);
insert into product values(110,'플레어 미디 훌스커트',30000,'스커트','스커트','resources/img/skirt6.jpg','resources/img/skirt6info.jpg',0);
insert into product values(111,'A라인 베이직 훌스커트',30000,'스커트','스커트','resources/img/skirt7.jpg','resources/img/skirt7info.jpg',0);
insert into product values(112,'린넨 미디 스커트',30000,'스커트','스커트','resources/img/skirt8.jpg','resources/img/skirt8info.jpg',0);

<!--악세서리 헤어핀-->
insert into product values(113,'이중 리본 미디움 헤어핀',8000,'악세서리','헤어핀','resources/img/hairpin1.jpg','resources/img/hairpin1info.jpg',0);
insert into product values(114,'꼬임 포인트 반다나 헤어밴드',10000,'악세서리','헤어핀','resources/img/hairpin2.jpg','resources/img/hairpin2info.jpg',0);
insert into product values(115,'핸드메이드 리본 헤어밴드',16000,'악세서리','헤어핀','resources/img/hairpin3.jpg','resources/img/hairpin3info.jpg',0);
insert into product values(116,'아일렛 펀칭 코튼 곱창 헤어밴드',8000,'악세서리','헤어핀','resources/img/hairpin4.jpg','resources/img/hairpin4info.jpg',0);
insert into product values(117,'러브 레터링 골드 헤어핀',12000,'악세서리','헤어핀','resources/img/hairpin5.jpg','resources/img/hairpin5info.jpg',0);
insert into product values(118,'쉬폰 빅 리본 헤어밴드',12000,'악세서리','헤어핀','resources/img/hairpin6.jpg','resources/img/hairpin6info.jpg',0);
insert into product values(119,'빅 리본 포인트 헤어핀',12000,'악세서리','헤어핀','resources/img/hairpin7.jpg','resources/img/hairpin7info.jpg',0);
insert into product values(120,'진주4핀 로맨틱 헤어핀',12000,'악세서리','헤어핀','resources/img/hairpin8.jpg','resources/img/hairpin8info.jpg',0);

<!--악세서리 안경-->
insert into product values(121,'메탈프레임 선글라스',18000,'악세서리','안경','resources/img/glasses1.jpg','resources/img/glasses1info.jpg',0);
insert into product values(122,'골드프레임 선글라스',18000,'악세서리','안경','resources/img/glasses2.jpg','resources/img/glasses2info.jpg',0);
insert into product values(123,'코디용 안경',18000,'악세서리','안경','resources/img/glasses3.jpg','resources/img/glasses3info.jpg',0);
insert into product values(124,'스퀘어 쉐입의 코디용 안경',18000,'악세서리','안경','resources/img/glasses4.jpg','resources/img/glasses4info.jpg',0);
insert into product values(125,'빈티지 코디용 안경',18000,'악세서리','안경','resources/img/glasses5.jpg','resources/img/glasses5info.jpg',0);
insert into product values(126,'포인트 선글라스',20000,'악세서리','안경','resources/img/glasses6.jpg','resources/img/glasses6info.jpg',0);
insert into product values(127,'스퀘어 쉐입 선글라스',18000,'악세서리','안경','resources/img/glasses7.jpg','resources/img/glasses7info.jpg',0);
insert into product values(128,'빅사이즈 라운드 안경',16000,'악세서리','안경','resources/img/glasses8.jpg','resources/img/glasses8info.jpg',0);

<!--악세서리 스카프벨트-->
insert into product values(129,'스트라이프 배색 타이',16000,'악세서리','스카프벨트','resources/img/scarf1.jpg','resources/img/scarf1info.jpg',0);
insert into product values(130,'체인 패턴 스카프',14000,'악세서리','스카프벨트','resources/img/scarf2.jpg','resources/img/scarf2info.jpg',0);
insert into product values(131,'체인 프린트 정사각형 쉐입 스카프',12000,'악세서리','스카프벨트','resources/img/scarf3.jpg','resources/img/scarf3info.jpg',0);
insert into product values(132,'진주장식 스카프링',6000,'악세서리','스카프벨트','resources/img/scarf4.jpg','resources/img/scarf4info.jpg',0);
insert into product values(133,'더블고리 벨트',12000,'악세서리','스카프벨트','resources/img/belt1.jpg','resources/img/belt1info.jpg',0);
insert into product values(134,'케이프 보석벨트',62000,'악세서리','스카프벨트','resources/img/belt2.jpg','resources/img/belt2info.jpg',0);
insert into product values(135,'러블리 하트쉐입 벨트',12000,'악세서리','스카프벨트','resources/img/belt3.jpg','resources/img/belt3info.jpg',0);
insert into product values(136,'골드 장식 슬림 벨트',12000,'악세서리','스카프벨트','resources/img/belt4.jpg','resources/img/belt4info.jpg',0);

<!--악세서리 가방신발-->
insert into product values(137,'프리미엄 미니 캘리 토드 숄더백',56000,'악세서리','가방신발','resources/img/bag1.jpg','resources/img/bag1info.jpg',0);
insert into product values(138,'포인트 숄더백',32000,'악세서리','가방신발','resources/img/bag2.jpg','resources/img/bag2info.jpg',0);
insert into product values(139,'미니 클러치 백',44000,'악세서리','가방신발','resources/img/bag3.jpg','resources/img/bag3info.jpg',0);
insert into product values(140,'미디엄 토드 숄더백',40000,'악세서리','가방신발','resources/img/bag4.jpg','resources/img/bag4info.jpg',0);
insert into product values(141,'더블 스트랩 라탄 웨지힐 샌들',34000,'악세서리','가방신발','resources/img/shoes1.jpg','resources/img/shoes1info.jpg',0);
insert into product values(142,'스퀘어 라인의 오픈토 뮬 힐',48000,'악세서리','가방신발','resources/img/shoes2.jpg','resources/img/shoes2info.jpg',0);
insert into product values(143,'튤립 미들 스트랩슈즈',44000,'악세서리','가방신발','resources/img/shoes3.jpg','resources/img/shoes3info.jpg',0);
insert into product values(144,'트렌디 어글리 스니커즈',32000,'악세서리','가방신발','resources/img/shoes4.jpg','resources/img/shoes4info.jpg',0);

<!--악세서리 ETC-->
insert into product values(145,'코튼 벙거지 모자',22000,'악세서리','기타','resources/img/etc1.jpg','resources/img/etc1info.jpg',0);
insert into product values(146,'필터교체형 워셔블 아이스 린넨마스크',5600,'악세서리','기타','resources/img/etc2.jpg','resources/img/etc2info.jpg',0);
insert into product values(147,'꽃잎 비즈 이어링',18000,'악세서리','기타','resources/img/etc3.jpg','resources/img/etc3info.jpg',0);
insert into product values(148,'블랙 레이스 쵸퍼',14000,'악세서리','기타','resources/img/etc4.jpg','resources/img/etc4info.jpg',0);
insert into product values(149,'비즈장식 리본 타이',20000,'악세서리','기타','resources/img/etc5.jpg','resources/img/etc5info.jpg',0);
insert into product values(150,'NY 레터링 코튼 볼캡',18000,'악세서리','기타','resources/img/etc6.jpg','resources/img/etc6info.jpg',0);
insert into product values(151,'와이어 니트 벙거지 모자',22000,'악세서리','기타','resources/img/etc7.jpg','resources/img/etc7info.jpg',0);
insert into product values(152,'알파벳 레터링 포인트 볼 캡',18000,'악세서리','기타','resources/img/etc8.jpg','resources/img/etc8info.jpg',0);


