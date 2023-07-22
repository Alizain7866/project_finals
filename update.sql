create proc update_name @Member_name varchar(255), @Member_id int, @newname varchar(255)
as
update Members
set @Member_name = @newname where   @Member_id = Member_id

go;
