create table User_details (
	Userid int primary Key,
	Username varchar(255),
	user_email_address varchar(255),
	user_password varchar(255),
	user_dept int,
	user_daily_limit int,
	user_monthly_limit int,
	user_role varchar(255),
	user_profile_picture varchar(255),
	FOREIGN KEY (user_dept) REFERENCES Department(dept_id)
);


create table Department(
	dept_id int primary key,
	dept_name varchar(255),
	dept_timings_start varchar(255),
	dept_timings_end varchar(255),
	dept_log time
);


create table order_details(
	order_id int primary key,
	total int,
	order_date date,
	user_id_fk int, 
	order_status varchar(255),
	extra_instructions varchar(255),
	FOREIGN KEY (user_id_fk) REFERENCES User_details (userid)
	--FOREIGN KEY (order_id) REFERENCES Ordered_items (order_id)
	

);

create table Ordered_items(
	order_id int primary key,
	item_ids int,
	orderdate date,
	items_qauntity integer, 
	primary key(order_id, item_ids),
	foreign key (item_ids) references Items(item_id),
	foreign key (order_id) references order_details(order_id) 


);
select * from Ordered_items

create table Items(
item_id int primary key,
item_name varchar(255),
price int


);


create table notifications(

	notification_id int primary key,

	notification_sender int,
	notification_message varchar(255),
	message_for_depart int,
	foreign key (message_for_depart) references Department(dept_id)


);

select * from notifications