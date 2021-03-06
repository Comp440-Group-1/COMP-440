USE [s16guest25]
GO
/****** Object:  StoredProcedure [dbo].[update_product_version]    Script Date: 5/7/2016 3:50:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Kevin Lee
-- Create date: 5/7/2016
-- Description:	Updates product version 
-- =============================================

ALTER PROCEDURE [dbo].[update_product_version]
	-- Add the parameters for the stored procedure here
	@versions_id int,
	@products_id int,
	-- decimal is 1 assuming there will not be version changes with more than 9 changes in a single version as established from examples (e.g. 1.2, 2.1) 
	@versions_num decimal(5,1),
	@new_versions_num decimal(5,1)
AS
BEGIN
	-- SET NOCOUNT ON to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

BEGIN TRANSACTION
BEGIN TRY
    UPDATE product_version 
	SET versions_num = @new_versions_num
	WHERE versions_id = @versions_id AND products_id = @products_id

 COMMIT TRANSACTION
END TRY

BEGIN CATCH
    SELECT 
        ERROR_LINE() AS ErrorLine,
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_PROCEDURE() AS ErrorProcedure,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() AS ErrorState
    ROLLBACK TRANSACTION
END CATCH
END

