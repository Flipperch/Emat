﻿CREATE PROC [dbo].[usp_INATIVACAO_ALUNODelete] 
    @CODIGO int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[INATIVACAO_ALUNO]
	WHERE  [CODIGO] = @CODIGO

	COMMIT
