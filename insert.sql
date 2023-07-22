create proc insertion 

@name varchar(255),
@age int, 
@gender bit, 
@email varchar(255), 
@contact varchar(255),
@cnic varchar(255),
@project_working_on int, 
@address varchar(255), 
@date_joining date
as
begin  
insert into Members (
Member_Name,
Member_Age, 
Member_gender, 
Member_email_addresss, 
Member_contact_number,
Member_CNIC,
Project_Working_on, 
Member_address, 
Date_of_joining)


values(
@name,
@age,
@gender,
@email,
@contact,
@cnic, 
@project_working_on, 
@address,
@date_joining)

end 



execute insertion ('Alizain', 90, 1, 'alyzain.nooruddin@gmail.com', '0345-2525842',  '42101-1663709-7', 4,  'nolocation', GETDATE())
