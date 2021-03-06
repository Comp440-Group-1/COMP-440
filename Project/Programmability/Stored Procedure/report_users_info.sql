USE [s16guest25]
GO
/****** Object:  StoredProcedure [dbo].[report_user_info]    Script Date: 5/7/2016 4:11:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin Lee
-- Create date: 5/7/2016
-- Description:	Retrieves personal user information 
-- =============================================

ALTER PROCEDURE [dbo].[report_user_info]
	-- Add the parameters for the stored procedure here
	@users_id INT
AS
BEGIN

	SET NOCOUNT ON;
	IF not exists (SELECT users_id FROM Users WHERE users_id = @users_id)
		BEGIN
		RAISERROR('Error: users_id not found in table Users!', 10, 1)
		END

	ELSE
		BEGIN
		SELECT Users.first_name, Users.last_name, Users.email,
		Phone.phone_num, Phone.phone_type 
		FROM Users, Phone
		WHERE Users.users_id = @users_id 
		AND Phone.users_id = Users.users_id 
		END
END
