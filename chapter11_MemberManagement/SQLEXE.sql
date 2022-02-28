CREATE TABLE member(
id varchar2(10) not null primary key,
passwd varchar2(20) not null,
name varchar2(20) not null,
email varchar2(20),
joindate date default sysdate
);

drop table member

insert into member values('cha2','3333','차두리','cha333@test.com','2018-11-12')

insert into member values('ki','1234','기성용','ki@test.com','2018-09-13')

insert into member values('kim','1212','김유신','kim@jweb.com','2018-09-04')

insert into member values('lee','1212','이순신','lee@test.com','2018-09-04')
insert into member values('hong','1212','홍길동','hong@gmail.com','2018-09-04')

select * from MEMBER


