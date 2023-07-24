#사용자 추가
create user test1@localhost identified by '1234';
#localhost 대신 ip(보통 서버ip)를 입력하면 그 ip로만 접속해야 DB에 접근할 수 있다.
#localhost를 쓰면 그 컴퓨터 또는 그 컴퓨터에 원격으로 접속해야만 접근가능.
# @뒤에 '%'를 쓰면 어디에서나 접속가능.

use mysql; -- mysql db를 쓰겠다. (스키마에 볼드 칠하는거.)
select host, user from user;

#사용자 권한
#아무나 DB를 보거나, 설정할 수 있어서는 안된다. 사용자 권한을 주어야 함.
grant all privileges on study3.* to test1@localhost; 
-- == study3.*(모든 테이블)에 대한 스키마를, test1에게, 비밀번호는 '1234' 모든 권한을 다 주겠다.
revoke all on study3.* from test1@localhost; -- 권한회수
grant all privileges on study3.user_tb to test1@localhost;
-- user_tb에 대한 모든 권한
revoke all on study3.user_tb from 'test2'@'%';

create user 'test2'@'%' identified by '1234';

use mysql;
select host, user from user;

-- 부분 권한부여
grant select on `study3`.`user_tb` to 'test2'@'%';
flush privileges;
grant select, insert on `study3`.`user_tb` to 'test2'@'%';
flush privileges;

-- 부분 권한회수
revoke insert on `study3`.`user_tb` from 'test2'@'%';
flush privileges;

-- 비밀번호변경(alter)
alter user 'test2'@'%' identified by '1111';
flush privileges;
alter user 'test1'@'localhost' identified by '1111';  -- test1의 경우 localhost니까
flush privileges;

-- 권한확인
show grants; -- 내 권한
show grants for 'test2'@'%'; 


#Quiz. '자신의 이름(영문)'@서버에서만 접속가능, 비밀번호는 1234
# 해당 계정의 비밀번호를 1q2w3e4r로 변경
# 권한은 study2 db의 user_tb(select, insert, delete, update )
#update 권한 회수

# study3 db ->product_tb(select)
# delete권한 추가

create user 'SeongGwang'@'192.168.0.1' identified by '1234';
alter user 'SeongGwang'@'192.168.0.1' identified by '1q2w3e4r';
flush privileges;
alter user 'test2'@'%' identified by '1111';
flush privileges;
