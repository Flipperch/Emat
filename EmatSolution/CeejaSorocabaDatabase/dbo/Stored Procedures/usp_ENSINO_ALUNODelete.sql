﻿CREATE PROC [dbo].[usp_ENSINO_ALUNODelete] 
    @CODIGO int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[ENSINO_ALUNO]
	WHERE  [CODIGO] = @CODIGO

	COMMIT
