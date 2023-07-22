create proc Insert_new_user @userid int, @username varchar(255), @user_email varchar(255), @user_password varchar(255), @user_dept int, @usermonthlimit int, @userDailylimit int, @Userrole varchar(255), @profilePicture varchar(255)

as 
begin 

insert into User_details (Userid, Username, user_email_address, user_password, user_dept, user_monthly_limit, user_daily_limit, user_role, user_profile_picture)
values (@userid, @username, @user_email, @user_password, @user_dept, @usermonthlimit, @userDailylimit, @Userrole, @profilePicture)

end 


exec Insert_new_user @userid = 5, @username = 'Alizain Merchant', @user_email = 'alyzain.nooruddin@gmail.com', @user_password = '123456', @user_dept = 2, @usermonthlimit = 50000, @userDailylimit = 1000, @Userrole = 'Intern', @profilePicture = 'img'