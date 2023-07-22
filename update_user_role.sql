--update userEmailPosition
create proc Change_user_Position @new_Position varchar(255), @user_id int
as 
begin
update User_details
set user_role = @new_Position

where Userid = @user_id

end 
select * from User_details

exec Change_user_Position  @new_Position = 'Alyzain.nooruddin@hotmail.com', @user_id = 5