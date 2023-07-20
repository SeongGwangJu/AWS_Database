
insert into product_tb
values
	(0, '상의1', 10000),
	(0, '상의2', 20000),
	(0, '상의3', 30000);
    
select * from product_tb;

insert into product_color_tb
values
	(0, 'black'),
	(0, 'white'),
	(0, 'red'),
	(0, 'blue'),
	(0, 'green');
    
select * from product_color_tb;

insert into registered_product_tb
values
	(0, 1, 1),
	(0, 1, 2),
	(0, 1, 3),
	(0, 1, 4),
	(0, 1, 5),
	(0, 2, 1),
	(0, 2, 3),
	(0, 3, 2),
	(0, 3, 4);
    
select * from registered_product_tb;

#
select
	*,												#on이 pct에 붙어있다 -> 조건문안은 pct가 ~일때로 가야함.
    (select color_name from product_color_tb as pct where pct.product_color_id = rpt.product_color_id) as color_name
from
	registered_product_tb as rpt
where
	product_color_id = (select
							product_color_id
						from
							product_color_tb
						where
							color_name = 'black');

#join을 쓰면 아래처럼 줄일 수 있다. 개중요함.
select
	*
from
	registered_product_tb rpt #테이블에는 as 안붙여도 된다.
    left outer join product_color_tb pct on(pct.product_color_id = rpt.product_color_id) #컬러테이블의 컬러id와 등록된 상품의 컬러id가 같을 경우 
		#left outer join :두개의 테이블을 합치겠다. on: 조건 : 괄호 안이 참인 경우ㅜ 
where
	pct.color_name = 'red';
    