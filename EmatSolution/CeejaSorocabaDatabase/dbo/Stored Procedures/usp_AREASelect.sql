﻿CREATE PROC [dbo].[usp_AREASelect] 
    @CODIGO tinyint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN
	SELECT [CODIGO], [NOME] 
	FROM   [dbo].[AREA] 
	WHERE  ([CODIGO] = @CODIGO OR @CODIGO IS NULL) 	
	COMMIT
