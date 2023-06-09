﻿CREATE PROC [dbo].[usp_PAISSelect] 
    @CODIGO tinyint
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [CODIGO], [NOME] 
	FROM   [dbo].[PAIS] 
	WHERE  ([CODIGO] = @CODIGO OR @CODIGO IS NULL) 
	ORDER BY NOME
	COMMIT
