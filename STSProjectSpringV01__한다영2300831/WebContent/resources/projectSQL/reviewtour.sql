drop table REVIEWTOUR;
purge recyclebin;

create table REVIEWTOUR (
	GUE_NO					 NUMBER(22),
	GUE_ID					 VARCHAR2(30) NOT NULL,
	GUE_PWD				 VARCHAR2(30) NOT NULL,
	GUE_SUBJECT			 VARCHAR2(80),
	GUE_CONTENT		 VARCHAR2(4000),
	GUE_LOGTIME		 DATE DEFAULT sysdate
);

delete reviewtour;

drop sequence reviewtour_num;

create sequence reviewtour_num
start with 0
minvalue 0
increment by 1;

declare 
begin
for i
in 0..254 loop
insert into REVIEWTOUR
values (reviewtour_num.nextval, 'test'||i, '1234', '여행 가요~ '||i, '내용입니다'||i, sysdate);
end loop;
end;
/



