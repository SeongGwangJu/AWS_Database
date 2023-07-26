select * from delivery_db;
insert into 
	test_0725.delivery_db(delivery_id, delivery_company, delivery_man, delivery_address, consignee_name, consignee_phone, consignee_message)
values
	(1, '대한통운', '김준일', '부산광역시 연제구 중앙대로 1001 부산광역시청', '김춘식', '010-8282-5353', '안전하게 배송해주세요');
    
#2
show schemas;
use test_0725;
show tables ;
DESC delivery_db;

show full tables;
#view도 조회

#3.
select*from student_tb;
select*from subject_tb;
select*from score_tb;

select
	st.score_id,
    st.student_id,
    stt.student_name,
    st.subject_id,
    sjt.subject_name,
    st.student_score
from
	score_tb st
    left outer join student_tb stt on (stt.student_id = st.student_id)
    left outer join subject_tb sjt on (sjt.subject_id = st.subject_id)
where
	score_id between 1 and 4;



---------------------------------------
#4
select * from product_tb;

START TRANSACTION;

savepoint insert_product;

INSERT INTO
	product_tb
VALUES(0, '오렌지사탕', 20);

savepoint update_product;

UPDATE 
	product_tb
SET
    product_number = 200
WHERE
    `product_id` = 1;
    
savepoint delete_product;

DELETE FROM
    product_tb
WHERE
    `product_id` = 2;
COMMIT;

rollback to savepoint update_product;

UPDATE 
    product_tb
SET
    product_number = 200
WHERE
    `product_id` = 1;
DELETE FROM
    product_tb
WHERE
    `product_id` = 2;
    
    COMMIT;
----------------

#5
create index product_code_index on product_tb(product_code);

#6.

insert into 
	user_mst
values
	(0, 'bbasdbaasdsd2','12342', 'bbab2', 'emai2l');
    
create view 
USER_VIEW 
as
SELECT
    `ID`,
    `USERNAME`,
    `PASSWORD`,
    `NAME`,
    `EMAIL`
FROM
    `USER_MST`
WHERE
    `ID` BETWEEN 1 AND 200;
    
SELECT 
	*
FROM
	test_0725.user_view
where
	`USERNAME` LIKE 'a%';

#7
show index from user_mst;
#index확인하는 방법.
show full tables in test_0725 where table_type = 'VIEW';
#table_type이 view인걸 모두 조회. 만들어진 모든 view를 조회할때 사용.

#2-1.
INSERT INTO sales(customer, amount)
VALUES 
    ('John', 100), 
    ('Jane', 200), 
    ('John', 150), 
    ('Jane', 50), 
    ('Jim', 300);
    
select * from sales;

select
	customer,
    sum(amount) as total_sales
from
	sales
group by
	customer;
    
#2-2
CREATE USER 'new_user'@'localhost';

use mysql;
select 
	host, user
from
	user;

GRANT 
SELECT, INSERT, UPDATE ON 
	* 
TO
	'new_user'@'localhost';
    
flush privileges;

show grants for 'new_user'@'localhost';

#2-3.
#1. 저장프로시저의 이름은 FIND_USER_BY_USERNAME이다.
#2. 매개변수로 _USERNAME을 받을 수 있어야한다.
#3. USER_MST와 USER_DTL을 조인하여 해당 _USERNAME의 사용자 정보를 조회할 수 있어야한다.
select * from USER_MST2;
SELECT * FROM USER_DTL;

insert into user_mst2
values (0, 'JOHN', 'JOHN@gmail.COM'),
	(0, 'JANE', 'JANE@gmail.COM'),
	(0, 'JIM', 'JIM@gmail.COM');

INSERT INTO USER_DTL
VALUES 
	(0, '010-1111-2222','MALE'),
	(0, '010-1111-2222','MALE'),
	(0, '010-1111-2222','MALE');


CALL FIND_USER_BY_USERNAME('JOHN');

SELECT 
	UM.*,
    UD.PHONE,
    UD.GENDER
FROM
	USER_MST2 UM
	LEFT OUTER JOIN USER_DTL UD ON (UD.USER_ID = UM.USER_ID)
WHERE
	UM.USERNAME = 'JOHN';

#2-4.

#USER_MST의 USER정보가 삭제 되었을 때 
#동일한 USER정보를 USER_DTL에서도 삭제될 수 있게 트리거를 작성하시오.

delete
from
	USER_MST2
where
	USER_ID = 3;
    
select * from USER_MST2;
SELECT * FROM USER_DTL;

