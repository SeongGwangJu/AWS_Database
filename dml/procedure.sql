#procedure(저장 프로시저)
select * from user_tb;

#각각의 프로시저에 들어가서 어떻게 설정해놨고 어떻게 호출하는지 비교해볼것!

call save_user('ddd@gmail.com', '1111', '김준이', 'google', null);

call save_user_many('ccc', '1234', '김준삼', null, null, 5);

set @color = 'black'; #black으로 출력된다. 설정에서 green으로 해놔도, black으로 뜬다 .
set @color_name = 'blue'; #blue라고 설정해도, 설정에서 red로 해놔서 re로 뜬다.

call get_product_total_count(@color, @total_count, @color_name);
 #in 값 자체를 복사해서 넣어둔 것.  out: 주소를 넘겨준것. inout :in과 out이 주소가 같은 변수
select @color, @total_count, @color_name;

call get_product_by_category('tees');
call get_product_by_category_case('ees');
call get_product_by_category_case2('outer');
