create PROCEDURE delete_ShopCart
(@BookID nvarchar(50),
@s_id int= 0 output)
as 
set @s_id=0

select @s_id=count(*)
 from ShopCart
where (BookID=@BookID)
if @s_id >0
begin
delete from ShopCart
where BookID=@BookID
end
return @s_id
