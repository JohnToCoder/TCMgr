-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE dbo.User_SP 

	@flag int,
	@UserID nvarchar(50) ='',
	@UserName nvarchar(50) ='',
	@UserType nvarchar(50) ='' ,
	@UserPW  nvarchar(50) = '',
	@UserEmail nvarchar(50) = '',
	@UserTel nvarchar(50) =''
AS

select * from dbo.tabUser
select * from  dbo.tabUserType

	if @flag= '1'
	begin
	   select a.UserID,a.UserName,a.PassWord,a.UserType,b.TypeName,a.Email,a.Tel  from dbo.tabUser a
	   left join dbo.tabUserType b on a.UserType = b.TypeID
	   where a.UserName = @UserName
	    
	end

GO
