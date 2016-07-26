create sequence subj_seq
start with 1000;

create table subject(
	subj_seq int primary key,
	major varchar2(20),
	subject varchar2(100),
	id varchar2(20),
	constraint subject_member_fk foreign key(id)
	references member(id) on delete cascade
)
select * from subject_member;

select * from member;

alter table subject rename column subject to subjects;

update subject set major='computer' where id='hong';

insert into subject
values(subj_seq.nextval,'eng','SQL:delphi:HTML','xornjseh1000');

create or replace view subject_member
as
select id,pw,name,regdate reg,ssn,email,profile_img img,phone,major,subjects 
from member join subject using(id)

