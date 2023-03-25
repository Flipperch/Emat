﻿CREATE PROC [dbo].[usp_DISCIPLINA_ALUNOInsert] 
    @COD_ENSINO_ALUNO int = NULL,
    @COD_DISCIPLINA tinyint = NULL,
    @ATUAL bit = NULL,
    @CONCLUIDA bit = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[DISCIPLINA_ALUNO] ([COD_ENSINO_ALUNO], [COD_DISCIPLINA], [ATUAL], [CONCLUIDA])
	SELECT @COD_ENSINO_ALUNO, @COD_DISCIPLINA, @ATUAL, @CONCLUIDA
	
	-- Begin Return Select <- do not remove
	SELECT [CODIGO], [COD_ENSINO_ALUNO], [COD_DISCIPLINA], [ATUAL], [CONCLUIDA]
	FROM   [dbo].[DISCIPLINA_ALUNO]
	WHERE  [CODIGO] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT