create table department_messages 
(
	message_id int, 
	message_for_department int,
	primary key (message_id, message_for_department),
	foreign key (message_id) references notifications (notification_id),
	foreign key (message_for_department) references Department (dept_id)
);
select * from department_messages