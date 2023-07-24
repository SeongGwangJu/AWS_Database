##https://dogfoot-er.tistory.com/

#insert(데이터 추가)
insert into pratice_myself.`test_tb`(`student_id`, `student_name`, `student_age`, student_score) values(1, '학생1', 20, 65);
-- 작은따옴표 생략
insert into pratice_myself.test_tb(student_id, student_name, student_age, student_score) values(2, '학생2', 21, 70);
-- 선택된 스키마라면 스키마와 컬럼 생략
insert into `test_tb` values(3, '학생3', 22, 75);
-- 일부 값만 넣을 때 : 컬럼을 명시
insert into pratice_myself.`test_tb`(`student_id`, `student_name`) values(4, '학생4');
-- 일부 값만 넣을 때(2) : null로 채움
insert into test_tb values(5, '학생5', null, null);
-- PK값 외에 모두 null로 넣을 수 있다.
insert into test_tb values(6, null, null, null);

#update(데이터 수정)
update test_tb set student_age = 24 where student_id = 4;
update test_tb set student_score = 100 where student_id = 4;
update test_tb set student_age = 26, student_score = 90 where student_id = 5;

#delete(데이터 삭제)
delete from test_tb where student_id = 3;
delete from test_tb where student_id between 13 and 5;
delete from test_tb; -- 전체삭제

#가장 먼저 값 추가, 줄 정리해서 insert.

select * from test_tb;

select
	student_id,
    student_name,
    student_age,
    student_score
from
	test_tb
where
	(student_age = 20
    and student_score is not null)
    or student_name = '학생3';
    
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

    
    
    

