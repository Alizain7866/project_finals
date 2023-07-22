create proc insert_notification  @notification_id int, @notificatoin_sender int, @notification_message varchar(255), @message_for_dept int 

as begin
insert into notifications (notification_id, notification_sender, notification_message,message_for_depart)
values ( @notification_id, @notificatoin_sender, @notification_message, @message_for_dept)
end 

exec insert_notification @notification_id =1 , @notificatoin_sender = 1 ,@notification_message='This is a new message and it should be from admin' ,@message_for_dept= 1


select * from notifications

