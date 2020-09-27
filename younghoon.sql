--공지/게시판 테이블
CREATE TABLE event(
   branch VARCHAR2(20),
   num NUMBER PRIMARY KEY,
   writer VARCHAR2(100),
   title VARCHAR2(100),
   content CLOB,
   viewCount NUMBER, 
   regdate DATE
);

create sequence event_seq;


--예약 정보 생성
create table res_info (
res_no VARCHAR2(10) primary key, 
res_name VARCHAR2(15), 
resdate VARCHAR2(15), 
time VARCHAR2(15), 
bname VARCHAR2(20), 
thema VARCHAR2(45), 
phone VARCHAR2(15), 
cost VARCHAR2(15), 
personal VARCHAR2(10)
);

create table login(
aid varchar2(15),
apwd varchar2(25)
);

insert into login values ('admin','admin');

--예약상태 테이블
CREATE TABLE res_state(
bname VARCHAR2(20), 
resdate VARCHAR2(15), 
time VARCHAR2(15), 
thema VARCHAR2(45), 
state VARCHAR2(15)
);

commit;
