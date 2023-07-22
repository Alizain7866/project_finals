

select * from User_details
create proc FMS_Insert_Orders 
@total int, 
@user_id int
	as
		begin 
			insert into order_details (total, order_date,user_id_fk, order_status)
			values(@total, getdate(), @user_id,'pending')
		end 