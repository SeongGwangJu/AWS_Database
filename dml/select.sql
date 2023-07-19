#가장 먼저 값 추가, 줄 정리해서 insert.
insert into student_tb 
values
	(0, '김준일', 20, 0), 
	(0, '김준이', 21, 0),
	(0, '김준삼', 20, null),
	(0, '김준사', 22, null),
	(0, '김준오', 21, 0);
    
select * from student_tb;
select
	student_id,
    student_name,
    stdent_age,
    student_score
from
	student_tb;