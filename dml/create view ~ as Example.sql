create view user_withdraw_view as
select
	uwt.user_withdraw_id,
    uwt.user_id,
    uwt.name,
    t1.title,
    t2.content
from
	user_withdraw_tb uwt
    left outer join table1 t1 on(t1.user_id = uwt.user_id)
    left outer joi