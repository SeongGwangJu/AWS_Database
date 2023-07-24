insert into product_tb
values
	(20230701, '상품1'),
    (20230702, '상품2'),
    (20230703, '상품3'),
    (20230704, '상품4'),
    (20230705, '상품5');


create index product_code_index on product_tb(product_code);
#index를 추가로 설정할 때.
#index가 key값이 된다. 겹칠일이 없기떄문에, key값으로 설정하면 조회하기가 쉽기때문.

show index from product_tb;
show index from user_tb;
#index확인하는 방법.

create view product_view as
select * from product_tb;
#product_view를 생성.


show tables;
#table과 view 모두 조회

show full tables in study3 where table_type = 'VIEW';
#table_type이 view인걸 모두 조회. 만들어진 모든 view를 조회할때 사용.


show full tables in study3;
#table_type과 table 조회.