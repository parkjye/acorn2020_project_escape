--Review Table SQL
create table review (
	num number PRIMARY KEY,
	writer varchar2(250) not null,
	pwd varchar2(250) not null,
	title varchar2(250) not null,
	content clob,
	viewcount number,
	regdate date
);


--sequence
create sequence review_seq;