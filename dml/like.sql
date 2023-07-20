select * from product_tb;

select
	*
from
	product_tb
where
	product_name like 'BASIC ST_SSY %';
    #_는 한 글자만
    # 앞에 붙은 %는 그 앞의 붙은 문자는 무엇이든
    # 뒤에붙은 %는 그 뒤의 붙은 문자가 무엇이든이라는 뜻.
    # *int는 크다 작다로 해야함. like는 문자열에만 가능.
    
select
	*
from
	product_tb
where
	product_name in('NO.4 TEE' , 'PROPERTY OF TEE');

#위와 같이 결과가 나오도록 like를 사용해 만드시오

select
	*
from
	product_tb
where
	product_name like 'NO%'
    OR product_name like 'PROPERTY%';
# *in 과 like는 같이 쓸 수 없다.


    
    