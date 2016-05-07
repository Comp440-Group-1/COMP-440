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
-- Author:		Kevin Lee
-- Create date: 5/7/2016
-- Description:	Retrieves product, version
-- =============================================

CREATE PROCEDURE [dbo].[report_user_info]
	-- Add the parameters for the stored procedure here
	@users_id INT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY

		SELECT Products.products_name, Versions.versions_num --[Download.download_date] I tried to use pivot table through branch to downloads; very confused
		FROM Products, Versions
		INNER JOIN Versions
		ON Products.versions_num = Versions.versions_num
		INNER JOIN Products
		ON Versions.products_id = Products.products_id
		GROUP BY
		Products.products_name, Versions.versions_num

	END TRY
	BEGIN CATCH
			RAISERROR('Error finding product!', 10, 1);
	END CATCH
END
GO