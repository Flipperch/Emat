﻿CREATE PROC [dbo].[usp_CARTAO_ACESSOSelect] 
    @CODIGO int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [CODIGO], [N_MAT] 
	FROM   [dbo].[CARTAO_ACESSO] 
	WHERE  ([CODIGO] = @CODIGO OR @CODIGO IS NULL) 

	COMMIT