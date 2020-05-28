create table cloth (
   clothid number(4),
   clothtitle varchar2(20),
   clothimgpath varchar2(20),
   clothprice number DEFAULT 0,
   clothbuycount number(4),
   clothremain number(4),
   PRIMARY KEY(clothid)
);