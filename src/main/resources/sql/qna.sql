create table qna(
id number(4) primary key,
title varchar2(100),
name varchar2(20),
content varchar2(300),
savedate date default sysdate,
hit number(4) default 0,
idgroup number(4),
step number(4),
indent number(4)
);
create sequence qna_seq;