CREATE PROCEDURE [dbo].[insertShopCart]
	@OrderID nvarchar(255),
	@BookID nvarchar(50),
	@BookTitle nvarchar(50),
	@Price money,
	@Qty int
AS
insert into Place (place_id,count_rows,count_position)
	values(@place_id,@count_rows,@count_position)
