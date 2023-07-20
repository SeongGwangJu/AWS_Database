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
    student_age,
    student_score
from
	student_tb
where
	(student_age = 20
    or student_score is not null)
    and student_name = '김준일'; #괄호가 없으면 '김준일'조건은 nn과 and면 된다. 괄호가 있으면 age20까지 포함.
    
#스코어를 바꿔보자
update student_tb
set
	student_score = 20
where
	student_age = 21;
#이런식으로 값바꾸는건 위험하다. 20살이면 모두 10점으로 바꾼다..?
#edit -> preference -> SQL Editor-> Safe Updates 체크 해제


#나이가 20살인 학생들의 점수를 전부 더하세요
select
	student_age,
    sum(student_score) #점수의 합만 반환하면 되니까. 만약 sum을 안넣으면 점수가 각각 다르기때문에 그룹바이를 해도 묶이지가 않는다.
from
	student_tb
group by
	student_age;
    
#알리아스 추가
select
	student_age,
    sum(student_score) as total_score
from
	student_tb
where
	student_age = 20
group by
	student_age;
    
    
    #토탈 스코어가 30인 애를 찾아라.
select
	student_age,
    sum(student_score) as total_score
from
	student_tb
where
	student_age
group by
	student_age
having
	total_score = 30;
	

#count : 데이터가 몇개가 있는가?
select
	count(*)
from
	student_tb
where
	student_age = 20;
    
#성적순 정렬 (오름차순 :asc, 내림차순 : desc)
select
	*
from
	student_tb
order by
	student_score desc, #성적별 내림차순 정렬
    student_id asc; #id번호 오름차순

    
    
    