create table qnareply(
num number primary key,
userId varchar2(20),
content varchar2(500),
rdate date default sysdate,
step number(4) DEFAULT 0,
indent number(4) DEFAULT 0,
idgroup number(4));

create sequence qna_reply_seq;