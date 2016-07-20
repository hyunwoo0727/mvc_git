create table grade(
	seq number constraint pk_grade primary key,
	grade varchar2(1),
	java number,
	sql number,
	html number,
	javascript number,
	id varchar2(20),
	constraint fk_member_grade foreign key (id)
	references member(id) on delete cascade
);

insert into grade(
	seq,grade,java,sql,html,javascript,id,exam_date
)values(
	seq.nextval,'C',77,75,71,78,'hong','2016-06'
);

drop sequence seq;

create sequence seq
increment by 1
start with 1000
nocycle;
select * from member;

select * from grade;

delete from grade;

drop table grade;

alter table grade add(exam_date varchar2(10));




commit;
-- read list
select * from grade;
-- read findByPK
-- read finByID
-- read count
-- update
UPDATE GRADE SET java = 30 WHERE SEQ = 1001; 
-- delete











select * from grade_member;

drop view grade_view;

create view grade_view
as select * from grade;


----join---------
create view grade_member as
select * from member join grade using(id)

select * from grade_view;

