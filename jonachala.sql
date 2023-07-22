select Username, orderdate,item_name  from order_details OD, User_details UD, Ordered_items OI, Items where UD.Userid = OD.user_id_fk and OD.order_id = OI.order_id and OI.item_ids = Items.item_id and UD.userid = 3
--This will give the monthly limit remaining 

--select Username, (UD.user_monthly_limit - OD.total) as monthly_limit_remaining from User_details UD, order_details OD where UD.Userid = OD.user_id_fk and UD.Userid= 2
select * from order_details
--add the totals 

delete from order_details
where order_id = 5
--select Username, (select (OD.total + OD.total) from User_details UD, order_details OD where UD.Userid = OD.user_id_fk and UD.Userid= 2) as grand_total from User_details UD, order_details OD where UD.Userid = OD.user_id_fk and UD.Userid= 2

alter table User_details 
add Monthly_limit_remaining int;

select * from User_details, order_details where order_details.user_id_fk = User_details.Userid


select * from  order_details
select * from Ordered_items
select * from Items
select * from User_details
select * from notifications

select * from Department

insert into Ordered_items (order_id, item_ids, orderdate, items_qauntity)
values (5, 2, getdate(), 4)

update order_details
set total = Ordered_items.items_qauntity * Items.price from Ordered_items, Items, order_details
where order_details.order_id = Ordered_items.order_id and Ordered_items.item_ids = Items.item_id and order_details.user_id_fk = 3

(select Userid, User_details.user_monthly_limit - SUM(total) as totals from order_details OD, user_details where OD.user_id_fk = user_details.Userid and User_details.Userid= 2
group by OD.user_id_fk, Userid ,User_details.user_monthly_limit) 


select Userid, Username, OD.order_id, sum(total)as Sums, user_monthly_limit , items_qauntity,item_name, price from User_details UD, order_details OD, Ordered_items OI, Items where OD.order_id = OI.order_id and OD.user_id_fk = UD.Userid and OI.item_ids = Items.item_id group by Username,OD.order_id, items_qauntity,item_name, price,user_monthly_limit ,Userid


select user_monthly_limit- sum(total) as Monthly_limit_remains, user_monthly_limit from order_details OD, User_details UD where UD.Userid = OD.user_id_fk
group by Username, user_monthly_limit, Userid

update User_details
set user_monthly_limit = (select user_monthly_limit- sum(total) as Monthly_limit_remains, user_monthly_limit from order_details OD, User_details UD where UD.Userid = OD.user_id_fk
group by user_monthly_limit) from order_details as O
where Userid = O.user_id_fk 



--insert orders 
insert into Ordered_items
(order_id, item_ids, orderdate, items_qauntity)
values(5, 3, getdate(), 3)


insert into order_details(order_id, total, order_date, user_id_fk, order_status, extra_instructions)
values (5, (select (Ordered_items.items_qauntity * Items.price) as Totals from Ordered_items, Items
where  Ordered_items.item_ids = Items.item_id and Ordered_items.order_id = 5), getdate(), 3, 'pending', '-');

--amount remaining
update User_details 
set user_monthly_limit =  User_details.user_monthly_limit - SUM(order_details.total) as remaining from order_details OD, user_details where OD.user_id_fk = user_details.Userid and User_details.Userid= 2
group by OD.user_id_fk, Userid ,User_details.user_monthly_limit



select * from order_details
select * from ordered_items
select * from Items

select * from order_details 
--get total of an order

update order_details
set total = Ordered_items.items_qauntity * Items.price from Ordered_items, Items, order_details
where order_details.order_id = Ordered_items.order_id and Ordered_items.item_ids = Items.item_id and order_details.user_id_fk = 2


select  (Ordered_items.items_qauntity * Items.price) as Totals from Ordered_items, Items, order_details
where order_details.order_id = Ordered_items.order_id and Ordered_items.item_ids = Items.item_id and order_details.user_id_fk = 3

