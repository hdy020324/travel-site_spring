drop table tourmember;
purge recyclebin;

create table tourmember (
   MEM_ID VARCHAR2(20) NOT NULL,
   MEM_PWD VARCHAR2(20) NOT NULL,
   MEM_NAME VARCHAR2(20) NOT NULL,
   MEM_EMAIL VARCHAR2(30),
   MEM_PHONE VARCHAR2(20) NOT NULL,
   MEM_BIRTH VARCHAR2(30)
);

insert into tourmember 
values ('red','1234','장미','red@test.com','01014248421','010424');

insert into tourmember 
values ('blue','1234','파랑','blue@test.com','01078542354','001207');

insert into tourmember 
values ('green','1234','초록','green@test.com','01032659854','991104');

insert into tourmember 
values ('yellow','1234','노랑','yellow@test.com','01045127114','880311');

insert into tourmember 
values ('black','1234','검정','black@test.com','01036589651','700611');

