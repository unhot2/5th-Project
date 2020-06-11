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

<-- 아우터 부분 -->
insert into product values(1,'부클패브릭 나시탑 가디건 세트 ',22000,'아우터','가디건','resources/img/outer1.jpg','resources/img/outer1info.jpg',0);
insert into product values(2,'테일러드카라 베이직 오픈자켓 ',36000,'아우터','자켓','resources/img/outer2.jpg','resources/img/outer2info.jpg',0);
insert into product values(3,'시스루 오픈숄 롱가디건',22000,'아우터','가디건','resources/img/outer3.jpg','resources/img/outer3info.jpg',0);
insert into product values(4,'러블리 퍼프소매 썸머 반팔 자켓 ',46000,'아우터','자켓','resources/img/outer4.jpg','resources/img/outer4info.jpg',0);
insert into product values(5,'진주장식 포인트 반팔 가디건 ',22000,'아우터','가디건','resources/img/outer5.jpg','resources/img/outer5info.jpg',0);
insert into product values(6,'버튼클로징 포켓장식 데일리 롱가디건',25000,'아우터','가디건','resources/img/outer6.jpg','resources/img/outer6info.jpg',0);
insert into product values(7,'레이스슬립 가디건 세트',31000,'아우터','가디건','resources/img/outer7.jpg','resources/img/outer7info.jpg',0);
insert into product values(8,'홑겹 7부 소매배색 자켓',70000,'아우터','자켓','resources/img/outer8.jpg','resources/img/outer8info.jpg',0);
insert into product values(9,'루즈핏 후드집업',25000,'아우터','후드집업','resources/img/outer9.jpg','resources/img/outer9info.jpg',0);
insert into product values(10,'베이직 자켓 ',40000,'아우터','자켓','resources/img/outer10.jpg','resources/img/outer10info.jpg',0);
insert into product values(11,'골드버튼 도톰 V넥 니트가디건 ',38000,'아우터','가디건','resources/img/outer11.jpg','resources/img/outer11info.jpg',0);
insert into product values(12,'포멀핏 베이직 트렌치코트 ',116000,'아우터','코트','resources/img/outer12.jpg','resources/img/outer12info.jpg',0);
insert into product values(13,'박시핏 체크 후드 남방 가디건',28700,'가디건','가디건','resources/img/outer13.jpg','resources/img/outer13info.jpg',0);
insert into product values(14,'컬러 배색 가디건',33000,'아우터','가디건','resources/img/outer14.jpg','resources/img/outer14info.jpg',0);
insert into product values(15,'하이넥 야상 숏 자켓 ',78000,'아우터','자켓','resources/img/outer15.jpg','resources/img/outer15info.jpg',0);
insert into product values(16,'골드 버튼 Y넥 니트 가디건 ',30000,'아우터','가디건','resources/img/outer16.jpg','resources/img/outer16info.jpg',0);
insert into product values(17,'글렌 체크 더블버튼 자켓 ',51000,'아우터','자켓','resources/img/outer17.jpg','resources/img/outer17info.jpg',0);
insert into product values(18,'림핏 캐쥬얼 데님 숏 자켓',46000,'아우터','자켓','resources/img/outer18.jpg','resources/img/outer18info.jpg',0);
insert into product values(19,'루즈핏 후드 야상점퍼',77000,'아우터','점퍼','resources/img/outer19.jpg','resources/img/outer19info.jpg',0);
insert into product values(20,'로맨틱 가디건',34000,'아우터','가디건','resources/img/outer20.jpg','resources/img/outer20info.jpg',0);

<-- 상의 부분 -->
insert into product values(21,'레이스 블라우스',22000,'상의','블라우스','resources/img/top1.jpg','resources/img/top1info.jpg',0);
insert into product values(22,'하트넥 골지 반팔 티셔츠',18000,'상의','티셔츠','resources/img/top2.jpg','resources/img/top2info.jpg',0);
insert into product values(23,'핀턱 소매 블라우스',35000,'상의','블라우스','resources/img/top3.jpg','resources/img/top3info.jpg',0);
insert into product values(24,'프릴 트리밍 포인트 블라우스 ',46000,'상의','블라우스','resources/img/top4.jpg','resources/img/top4info.jpg',0);
insert into product values(25,'나팔소매 쉬폰 배색 블라우스',31000,'블라우스','resources/img/top5.jpg','resources/img/top5info.jpg',0);
insert into product values(26,'플라워 패턴 리본 반팔 블라우스',34000,'상의','블라우스','resources/img/top6.jpg','resources/img/top6info.jpg',0);
insert into product values(27,'퍼프소매 레이스 블라우스',22000,'상의','블라우스','resources/img/top7.jpg','resources/img/top7info.jpg',0);
insert into product values(28,'시스루 크롭 요루쉬폰 블라우스',30000,'상의','블라우스','resources/img/top8.jpg','resources/img/top8info.jpg',0);
insert into product values(29,'플라워 레이스 나시 블라우스',21000,'상의','블라우스','resources/img/top9.jpg','resources/img/top9info.jpg',0);
insert into product values(30,'나팔 소매 레이스 반팔 블라우스',22000,'상의','반팔','resources/img/top10.jpg','resources/img/top10info.jpg',0);
insert into product values(31,'V넥 슬립 나시티',16000,'상의','나시티','resources/img/top11.jpg','resources/img/top11info.jpg',0);
insert into product values(32,'레터링 코튼 세미크롭티셔츠 ',16000,'상의','티셔츠','resources/img/top12.jpg','resources/img/top12info.jpg',0);
insert into product values(33,'포인트 루즈 반팔 티셔츠',14000,'상의','티셔츠','resources/img/top13.jpg','resources/img/top13info.jpg',0);
insert into product values(34,'스퀘어넥  5부 골지 니트',22000,'상의','니트','resources/img/top14.jpg','resources/img/top14info.jpg',0);
insert into product values(35,'원포인트 반팔 티셔츠 ',22000,'상의','티셔츠','resources/img/top15.jpg','resources/img/top15info.jpg',0);
insert into product values(36,'리본 퍼프소매 티셔츠 ',25000,'상의','티셔츠','resources/img/top16.jpg','resources/img/top16info.jpg',0);
insert into product values(37,'레터링 슬림핏 티셔츠 ',20000,'상의','티셔츠','resources/img/top17.jpg','resources/img/top17info.jpg',0);
insert into product values(38,'골지라인 반팔 니트 티셔츠',16000,'상의','티셔츠','resources/img/top18.jpg','resources/img/top18info.jpg',0);
insert into product values(39,'후르츠 포인트 코튼 티셔츠',26000,'상의','티셔츠','resources/img/top19.jpg','resources/img/top19info.jpg',0);
insert into product values(40,'츄잉 컬러배색 포인트 반팔 ',14000,'상의','반팔','resources/img/top20.jpg','resources/img/top20info.jpg',0);

<-- 하의 부분 -->
insert into product values(41,'썸머 하이웨스트 와이드 팬츠',18000,'하의','와이드팬츠','resources/img/pants1.jpg','resources/img/pants1info.jpg',0);
insert into product values(42,'뷔스티에 와이드핏 점프슈트',28000,'하의','점프슈트','resources/img/pants2.jpg','resources/img/pants2info.jpg',0);
insert into product values(43,'히든밴딩 일자핏 데님팬츠',32000,'하의','청바지','resources/img/pants3.jpg','resources/img/pants3info.jpg',0);
insert into product values(44,'니트와이드팬츠 ',18900,'하의','와이드팬츠','resources/img/pants4.jpg','resources/img/pants4info.jpg',0);
insert into product values(45,'슬림 데님팬츠',34000,'하의','청바지','resources/img/pants5.jpg','resources/img/pants5info.jpg',0);
insert into product values(46,'슬림일자핏 사이드슬릿 코튼 팬츠',29000,'하의','면바지','resources/img/pants6.jpg','resources/img/pants6info.jpg',0);
insert into product values(47,'쿨 와이드 밴딩 팬츠',11000,'하의','와이드팬츠','resources/img/pants7.jpg','resources/img/pants7info.jpg',0);
insert into product values(48,'하이웨스트 투버튼 숏츠',27000,'하의','청바지','resources/img/pants8.jpg','resources/img/pants8info.jpg',0);
insert into product values(49,'슬림 일자핏 데일리 9부팬츠',26000,'하의','면바지','resources/img/pants9.jpg','resources/img/pants9info.jpg',0);
insert into product values(50,'미니 슬릿 치마바지 ',36000,'하의','스커트','resources/img/pants10.jpg','resources/img/pants10info.jpg',0);
insert into product values(51,'멜빵5부 팬츠 점프슈트',20000,'하의','점프슈트','resources/img/pants11.jpg','resources/img/pants11info.jpg',0);
insert into product values(52,'데님 큐롯 팬츠 ',34000,'하의','스커트','resources/img/pants12.jpg','resources/img/pants12info.jpg',0);
insert into product values(53,'하이웨스트 코튼 숏 팬츠',24000,'하의','면바지','resources/img/pants13.jpg','resources/img/pants13info.jpg',0);
insert into product values(54,'히든 밴딩 일자핏 데님 팬츠',30000,'하의','청바지','resources/img/pants14.jpg','resources/img/pants14info.jpg',0);
insert into product values(55,'랩디테일 밴딩 치마바지 ',30000,'하의','스커트','resources/img/pants15.jpg','resources/img/pants15info.jpg',0);
insert into product values(56,'더블버튼 A라인 큐롯 팬츠 ',37000,'하의','스커트','resources/img/pants16.jpg','resources/img/pants16info.jpg',0);
insert into product values(57,'슬릿 세미와이드핏 데님 팬츠 ',33000,'하의','하의','resources/img/pants17.jpg','resources/img/pants17info.jpg',0);
insert into product values(58,'멜빵디자인 점프슈트',38000,'하의','점프슈트','resources/img/pants18.jpg','resources/img/pants18info.jpg',0);
insert into product values(59,'사이드 랩 팬츠 스커트',26000,'하의','스커트','resources/img/pants19.jpg','resources/img/pants19info.jpg',0);
insert into product values(60,'착붙핏 9부 스키니팬츠',38000,'하의','청바지','resources/img/pants20.jpg','resources/img/pants20info.jpg',0);

<-- 악세사리 부분 -->
insert into product values(61,'빅 리본 포인트 헤어핀',12000,'악세서리','헤어핀','resources/img/acc1.jpg','resources/img/acc1info.jpg',0);
insert into product values(62,'포인트 선글라스',20000,'악세서리','안경','resources/img/acc2.jpg','resources/img/acc2info.jpg',0);
insert into product values(63,'체인 프린트의 정사각형 쉐입 스카프',12000,'악세서리','스카프','resources/img/acc3.jpg','resources/img/acc3info.jpg',0);
insert into product values(64,'골드 장식 슬림 벨트',12000,'악세서리','벨트','resources/img/acc4.jpg','resources/img/acc4info.jpg',0);
insert into product values(65,'스퀘어 쉐입 선글라스',18000,'악세서리','안경','resources/img/acc5.jpg','resources/img/acc5info.jpg',0);
insert into product values(66,'이중 리본 미디움 헤어핀',8000,'악세서리','헤어핀','resources/img/acc6.jpg','resources/img/acc6info.jpg',0);
insert into product values(67,'빅사이즈 라운드 안경',16000,'악세서리','안경','resources/img/acc7.jpg','resources/img/acc7info.jpg',0);
insert into product values(68,'미디엄 토드 숄더백',40000,'악세서리','가방','resources/img/acc8.jpg','resources/img/acc8info.jpg',0);
insert into product values(69,'튤립 미들 스트랩슈즈',44000,'악세서리','신발','resources/img/acc9.jpg','resources/img/acc9info.jpg',0);
insert into product values(70,'진주장식 스카프링',6000,'악세서리','스카프','resources/img/acc10.jpg','resources/img/acc10info.jpg',0);
insert into product values(71,'필터교체형 아이스 린넨 마스크',7000,'악세서리','기타','resources/img/acc11.jpg','resources/img/acc11info.jpg',0);
insert into product values(72,'진주4핀 로맨틱 헤어핀',12000,'악세서리','헤어핀','resources/img/acc12.jpg','resources/img/acc12info.jpg',0);
insert into product values(73,'쉬폰 빅 리본 헤어밴드',12000,'악세서리','기타','resources/img/acc13.jpg','resources/img/acc13info.jpg',0);
insert into product values(74,'비즈 펜턴트 백 침 이어링',12000,'악세서리','기타','resources/img/acc14.jpg','resources/img/acc14info.jpg',0);
insert into product values(75,'물방울 비즈 초커 네크리스',20000,'악세서리','기타','resources/img/acc15.jpg','resources/img/acc15info.jpg',0);
insert into product values(76,'큐빅 포인트 리본 브로치',16000,'악세서리','기타','resources/img/acc16.jpg','resources/img/acc16info.jpg',0);
insert into product values(77,'NY레터링 베이직 볼캡',20000,'악세서리','기타','resources/img/acc17.jpg','resources/img/acc17info.jpg',0);
insert into product values(78,'와이어 니트 벙거지 모자',22000,'악세서리','기타','resources/img/acc18.jpg','resources/img/acc18info.jpg',0);
insert into product values(79,'꼬임 포인트 반다나 헤어밴드',10000,'악세서리','기타','resources/img/acc19.jpg','resources/img/acc19info.jpg',0);
insert into product values(80,'어글리 스니커즈',40000,'악세서리','신발','resources/img/acc20.jpg','resources/img/acc20info.jpg',0);