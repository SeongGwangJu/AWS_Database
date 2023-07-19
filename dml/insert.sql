
select * from test_tb;
# insert(데이터 추가)
insert into study1.`test_tb`(`test_id`, `name`, `birthday`) values(2, '김준이', '1994-09-08');
insert into study1.`test_tb`(`test_id`, `name`, `birthday`) values(3, '김준삼', '1994-09-09');
insert into study1.test_tb(test_id, birthday, name) values(4, '1994-09-09', '김준사'); #백컬럼은 없어도 되고, 순서가 바뀌어도 바뀐 순서대로 값을 넣으면 된다
insert into test_tb values(5, '김준오', '1994-09-11'); #앞에걸 지워도된다
insert into test_tb(test_id, birthday) values(6, '1994-09-12'); #생략된다
insert into test_tb values(7, '김준칠', null); #앞에 지우면 뒤에서 null을 넣어줘야한다
insert into test_tb values(8, null, null); 
                                                                               

