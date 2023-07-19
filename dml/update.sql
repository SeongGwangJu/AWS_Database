select * from test_tb;

#update(데이터 수정) 앞의 잘못되거나 null이였던 값을 수정
update test_tb set birthday = '1994-09-10' where test_id = 4; #test_id : primary key, 인덱스, 중복이 되지 않음.
update test_tb set name = '김준육' where test_id = 6;
update test_tb set birthday = '1994-09-13' where test_id = 7;
update test_tb set name = '김준팔', birthday = '1994-09-14' where test_id =8