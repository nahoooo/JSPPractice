CREATE TABLE member(
id varchar2(50) not null primary key,
passwd varchar2(16) not null
)

INSERT INTO member(id,passwd) values('lee','1234');
INSERT INTO member(id,passwd) values('kim','1425');
INSERT INTO member(id,passwd) values('park','5234');
INSERT INTO member(id,passwd) values('hong','2341');


UPDATE member SET passwd = '7777' WHERE id='hong'

delete member where id='hong'

SELECT * FROM member

DROP TABLE member


select * from emp

select * from employee

create table employee
as
select * from emp;
--실습을 위해 기존 emp테이블을 복사한 employee테이블 생성..--

insert into employee(empno,ename,job,mgr,hiredate,sal,comm,deptno)
values(7999,'HONG','SALESMAN',7698,'2022-02-07',3000,NULL,30)
--레코드 삽입 INSERT--

UPDATE employee set sal=2000 where empno=7999;
--레코드 수정.

delete from employee where empno=7999;
--레코드 삭제.


drop table employee

create table employee
as select empno,ename,job,hiredate,sal from emp

