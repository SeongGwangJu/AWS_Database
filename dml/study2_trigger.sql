insert into user_tb
values(0, '김준이');

insert into table1
select
	0,
    #select insert : value값을 직접 넣는게 아니라, select의 값을 insert할 수 있다.
    (select ifnull(max(user_id), 0) from user_tb), 
	concat((select
				name
			from
				user_tb
			where
				user_id = (select 
						ifnull(max(user_id), 0) 
					from 
						user_tb)) '의 자기소개'); #table1 마지막 인덱스의 name값 + concat 값
# 위에건 아래와 같은데 위 값을 trigger에 넣으면 자동화가 된다. 
insert into table1
values(0, 1,'김준일의 자기소개'); #user_tb의 user_id는 AI되므로, 똑같이 하려면 두번째 값은 1로 시작해야함

insert into table2
values(0, 1, '자기소개 내용을 입력하세요.');
