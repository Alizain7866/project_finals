User_details
 ALTER proc [dbo].[FMS_Insert_Orders] 
@Total decimal(18,2), 
@UserId int
	as
		begin 
			insert into Order_Details (Total, Order_Date,User_ID, Order_Satus)
			values(@Total, getdate(), @UserId,'Pending')
			select scope_identity()
		end 

		select * from tbl_Product

ALTER proc [dbo].[FMS_Insert_Order_Items] 10,2,50
@OrderId int,
@ProductId int,
@Quantity int


	as 
		begin 
			insert into Order_Items (Order_ID, Product_ID, Quantity)
			values(@OrderId, @ProductId, @Quantity)
			select scope_identity()
		end 



		select * from tbl_Product

 alter proc FMS_BindProducts   
@Query varchar(50)
	as 
		begin
			select Product_Id as id, ProductName as text from tbl_Product where ProductName like '%'+@Query+'%'
		end


Create proc FMS_BindAllProducts  
	as 
		begin
			select Product_Id, ProductName from tbl_Product 
		end



alter proc FMS_GetPricebyProductId 
@Product_Id int
		as
			begin
				select * from tbl_Product where Product_Id = @Product_Id  
 			end 