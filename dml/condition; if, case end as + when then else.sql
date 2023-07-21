# 조건문 : case + when 조건 + then + true 실행 else + false실행 + end + as 명칭 
select
	*,
    case
		when product_price < 100000 then '10만원 미만'
        else '10만원 이상'
    end as '가격 범위'
from
	product_tb;

#if문 : 삼항연산자 : 조건, true, false
select
	*,
	if(product_price < 100000, '10만원 미만', '10만원 이상') as '가격 범위2'
    
from
	product_tb;

select
	*,
	if(product_price < 100000, '10만원 미만', '10만원 이상') as '가격 범위2',
    if(size_m is null, '사이즈 없음', size_m) as size_m2,
    #Null체크 전용
    ifnull(size_m, '사이즈 없음') as size_m3, #만약 NULL이면 값을 '사이즈 없음'으로 바꾼다.
    nullif(size_m, 'M') as size_m4 #만약 size_m의 값이 'M'과 같으면 NULL로 표시한다.
from
	product_tb;

    