--update userEmailuser
create proc Change_user_email @new_email varchar(255), @user_id int
as 
begin
update User_details
set user_email_address = @new_email

where Userid = @user_id

end 
select * from User_details

exec Change_user_email @new_email = 'Alyzain.nooruddin@hotmail.com', @user_id = 5