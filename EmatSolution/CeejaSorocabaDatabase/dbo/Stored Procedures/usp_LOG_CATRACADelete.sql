﻿CREATE PROC [dbo].[usp_LOG_CATRACADelete] 
    @CODIGO int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[LOG_CATRACA]
	WHERE  [CODIGO] = @CODIGO

	COMMIT
