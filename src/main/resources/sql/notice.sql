create table notice(
id varchar2(20) primary key,
name varchar2(20),
title varchar2(100),
content varchar2(300),
savedate date default sysdate,
hit number(4) default 0,
idgroup number(4),
step number(4),
indent number(4)
);

create sequence notice_seq;

insert into notice(id,name,title,content,hit,idgroup,step,indent) values(notice_seq.nextval,'김민혁','인사','하이',0,notice_seq.currval,0,0);
insert into notice(id,name,title,content,hit,idgroup,step,indent) values(notice_seq.nextval,'최지나','반갑습니다','안녕하세요',0,notice_seq.currval,0,0);