/*

	1. 검색창에 상구라고 검색했을 때 해당 user에 등록된 모든 주소를 조회하시오.
    2. 상품별 총 판매 수량, 판매 총액을 조회하시오.(단 하나의 셀렉트 실행 안에서, 서브쿼리는 사용 가능)
    3.카테고리별 등록된 상품이 몇개씩 등록되어 있는지 조회하시오
    4. address_tb의 sido 컬럼을 참조하여 각 지역별로 판매된 상품의 총액을 조회하시오.
    5. 상품명에 '나이키'가 포함된 제품이 몇개가 판매되었꼬 판매된 총액은 얼마인지 조회하시오.
    */
    
#1. 검색창에 상구라고 검색했을 때 해당 user에 등록된 모든 주소를 조회하시오.
#상구라는 userid 와 + address_id +(order_tb) 
select
	ut.name,
    at.address
from
	user_tb ut
	left outer join address_tb at on(at.user_id = ut.user_id)
where
	ut.name = '상구';
    
#강사님 풀이
select
	at.*
from
	user_tb ut
    left outer join address_tb at on(at.user_id = ut.user_id)
where
	ut.name = '상구';    
    
#2. 상품별 총 판매 수량, 판매 총액을 조회하시오.(단 하나의 셀렉트 실행 안에서, 서브쿼리는 사용 가능)
# order detail tb와 produtc tb의 product id로 연결해 group by 상품, count_number, sum(count*price)

select
	pt.product_name,
    sum(odt.count_number) as total_sales_quantity,
    sum(odt.count_number * pt.product_price) as total_sales
from
	order_detail_tb odt
    left outer join product_tb pt on(pt.product_id = odt.product_id)
group by
	pt.product_name;

#강사님 풀이
select
	odt.product_id, #나랑 차이점 :나는 name, 강사님은 id로 조회
    sum(odt.count_number) as total_order_count,
    sum(pt.product_price) as total_product_price #count_number를 곱하지 않음
from
	order_detail_tb odt
    left outer join product_tb pt on(pt.product_id = odt.product_id)
group by
	odt.product_id;
    
#3.카테고리별 등록된 상품이 몇개씩 등록되어 있는지 조회하시오
#category id로 product tb + category tb, count로 

select
	category_name,
    count(product_id) as registered_count
from
	product_tb pt
    left outer join category_tb ct on(ct.category_id = pt.category_id)
group by
	category_name;

#강사님 풀이
select
	pt.category_id,
    ct.category_name,
    count(product_id) as total_product_count
from
	product_tb pt
    left outer join category_tb ct on(ct.category_id = pt.category_id)
group by
	pt.category_id,
    ct.category_name;

#4. address_tb의 sido 컬럼을 참조하여 각 '지역별'로 판매된 상품의 총액을 조회하시오.
#address_tb의 address id로 order tb 조인, order id로 odt 조인, product id로 product price 조인
#group by 시도, select 총액(count_number*price
select
	address_sido,
    sum(pt.product_price*odt.count_number) as total_sales
	#ifnull(pt.product_price, '0') as price_null, #만약 NULL이면 값을 0으로 바꾼다.
    #ifnull(odt.count_number, '0') as count_null -> 이렇게 적으니까 group by 오류가 뜨지. sum과 함께 써야함.
from
	address_tb at
    left outer join order_tb ot on(ot.address_id = at.address_id)
    left outer join order_detail_tb odt on(odt.order_id = ot.order_id)
    left outer join product_tb pt on(pt.product_id = odt.product_id)
group by
	at.address_sido;

#강사님 풀이
select
	at.address_sido,
    ifnull(sum(pt.product_price * odt.count_number), 0) as total_order_price
from
	address_tb at
    left outer join order_tb ot on(ot.address_id = at.address_id)
	left outer join order_detail_tb odt on(odt.order_id = ot.order_id)
    left outer join product_tb pt on(pt.product_id = odt.product_id)
group by
	at.address_sido;
    
#5. 상품명에 '나이키'가 포함된 제품이 몇개가 판매되었꼬 판매된 총액은 얼마인지 조회하시오.
#product tb의 product_name. odt와 productid로 연결

select
	product_name,
    ifnull(sum(odt.count_number), 0) as sales_count,
    ifnull(sum(odt.count_number * product_price), '0') as total_sales
from
	product_tb pt
    left outer join order_detail_tb odt on(odt.product_id = pt.product_id)
where
	product_name like '%나이키%'
group by
	product_name;

#강사님 풀이
select
	'나이키' as search_value,
    sum(odt.count_number) as total_order_count,
    sum(pt.product_price * odt.count_number) as total_order_price
from
	order_detail_tb odt
    left outer join product_tb pt on(pt.product_id = odt.product_id)
where
	pt.product_name like '%나이키%';




    