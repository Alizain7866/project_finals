--update userPassword
create proc Change_user_Password @new_Password varchar(255), @user_id int
as 
begin
update User_details
set user_password = @new_Password

where Userid = @user_id

end 
select * from User_details

exec Change_user_Password @new_Password = '546987', @user_id = 5