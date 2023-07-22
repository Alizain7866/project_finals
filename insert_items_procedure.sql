create proc proc_FMS_Insert_Items 'Nasaeeb Biryani', 900
@ProductName varchar(50),
@Price decimal(18, 2)

	as 
		begin 

	

			insert into tbl_Product(ProductName, Price)
		values(@ProductName, @Price)


end

select * from tbl_Product
select * from Order_Details

delete Order_Details
where User_ID = 1

select * from User_details

create proc proc_FMS_user_daily_limit 2

@Userid int 
as
begin
select * from User_details where Userid = @userid
end