create table login ( 
userId varchar2(20),
userPwd varchar2(20),
userName varchar2(20),
userAddr varchar2(1000),
userGender varchar2(20),
userBirth date,
userEmail varchar2(40),
master varchar2(20) default 1,
userPostCode varchar2(20),
primary key(userId));
