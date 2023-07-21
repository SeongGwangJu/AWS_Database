SELECT * FROM unicef.giver_tb;

#각 계정별로 어떤 기부를 했는지 조회
select
	gt.user_id,
    ut.name,
	gt.giver_id,
    gpt.giving_page_id,
    gpt.giving_name,
    gt.giving_total
from
	giver_tb gt
	left outer join giving_page_tb gpt on(gpt.giving_page_id = gt.giving_page_id)
    left outer join user_tb ut on(ut.user_id = gt.user_id)
group by
	gt.user_id,
	ut.name,
    gt.giver_id
order by
	user_id asc;
    
#2.센터별로 총 기부액이 얼마인지 조회
select
	ct.center_id,
    ct.center_name,
    ifnull(sum(giving_total), 0) as total_giving
from 
	center_tb ct
    left outer join giving_page_tb gpt on(gpt.center_id = ct.center_id)
    left outer join giver_tb gt on(gt.giving_page_id = gpt.giving_page_id)
group by
	ct.center_id;


#3. 기부 항목별 총 기부액 조회
select
	gpt.giving_page_id,
    gpt.giving_name,
    ifnull(sum(gt.giving_total), 0) total_giving_money
from 
	giving_page_tb gpt
    left outer join giver_tb gt on(gt.giving_page_id = gpt.giving_page_id)
group by
	gpt.giving_page_id,
    gpt.giving_name;
    
#4. 카테고리별 총 기부액 조회
select
	gct.giving_category_id,
    gct.giving_category_name,
    ifnull(sum(gt.giving_total), 0) as total_giving
from 
	giving_category_tb gct
    left outer join giving_page_tb gpt on(gpt.category_id = gct.giving_category_id)
    left outer join giver_tb gt on(gt.giving_page_id = gpt.giving_page_id)
group by
	gct.giving_category_id,
    gct.giving_category_name;