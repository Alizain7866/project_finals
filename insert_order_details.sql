


insert into order_details (order_id, total, order_date, user_id_fk, order_status,extra_instructions)
values (6,500,getdate(),3, 'pending', '-' )

delete order_details where order_id = 6
select * from order_details
												