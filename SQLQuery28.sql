 select * from items 
ALTER proc [dbo].[InsertOrderItems]
@orderId int,
@Item_id int, 
@orderdate date, 
@item_quantity int
	as 
		begin 
			insert into Ordered_items (order_id, item_ids, orderdate, items_qauntity)
			values(6, 2, getdate(), 5)			
		end 


ALTER proc [dbo].[FMS_Insert_Orders] 
@total int, 
@user_id int
	as
		begin 
			insert into order_details (total, order_date,user_id_fk, order_status)
			values(@total, getdate(), @user_id,'pending')
		end 