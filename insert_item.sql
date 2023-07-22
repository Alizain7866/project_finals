

create proc insert_item @item_id int, @item_name varchar(255), @price int

as begin 
insert into Items (item_id, item_name, price)
values(@item_id, @item_name, @price)
end 


exec insert_item @item_id = 6, @item_name  = 'Waheed Kabab House', @price = 500

select * from Items