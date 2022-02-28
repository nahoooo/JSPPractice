create table users(
id varchar2(28) primary key,
password varchar(8) not null,
name varchar2(30) not null,
role varchar2(5) default 'User'
)

select * from users

insert into users values('hong','hong123','홍길동','Admin');
insert into users values('abc','abc123','임꺽정','User');
insert into users values('guest','guest123','일지매','Guest');