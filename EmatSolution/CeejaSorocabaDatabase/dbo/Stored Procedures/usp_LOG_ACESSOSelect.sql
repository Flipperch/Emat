﻿CREATE PROC [dbo].[usp_LOG_ACESSOSelect] 
    @CODIGO int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [CODIGO], [COD_USUARIO], [TIPO], [DATA_HORA_ACESSO] 
	FROM   [dbo].[LOG_ACESSO] 
	WHERE  ([CODIGO] = @CODIGO OR @CODIGO IS NULL) 

	COMMIT
