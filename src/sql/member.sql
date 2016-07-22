--create table member("
--				+ "id varchar2(20) primary key,"
--				+ "pw varchar2(20),"
--				+ "name varchar2(20),"
--				+ "regDate varchar2(20),"
--				+ "ssn varchar2(8)"
--				+ ")";

alter table member add (email varchar2(20));

alter table member add(profile_img varchar2(100));

insert into member
values('lee','1','이순신','2016/07/01','880811-1');

insert into member
values('hong','1','홍길동','2015/07/01','901201-1');

insert into member
values('you2','1','유관순',null,'010706-4');


select * from member where id='you';


update member set pw='1324' where id='mingky10';

delete from member where id='2hwooo';

select * from member;

select count(*) cnt from member

update member set profile_img= id||'.png';



