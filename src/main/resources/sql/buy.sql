create table pay(
	userId varchar2(20) primary key,
	cartId varchar2(20),
	title varchar2(20),
	amount number,
	price number,
	message varchar2(200),
	status varchar2(20),
	payStatus number
);