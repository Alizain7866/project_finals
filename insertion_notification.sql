create proc inesrtion_many_notificatoins @message_id int, @messages_for_dept int 

as 
begin

insert into department_messages (message_id, message_for_department)
values (@message_id, @messages_for_dept)
end

exec inesrtion_many_notificatoins @message_id =1, @messages_for_dept= 1
