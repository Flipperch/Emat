﻿CREATE PROC [dbo].[usp_UFDelete] 
    @CODIGO smallint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[UF]
	WHERE  [CODIGO] = @CODIGO

	COMMIT
