CREATE PROCEDURE [dbo].[insertShopCart]
	@OrderID nvarchar(255),
	@BookID nvarchar(50),
	@BookTitle nvarchar(50),
	@Price money,
	@Qty int
AS
insert into ShopCart (OrderID,BookID,BookTitle,Price,Qty)
	values(@OrderID,@BookID,@BookTitle,@Price,@Qty)
