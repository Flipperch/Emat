﻿CREATE PROC [dbo].[usp_DISCIPLINA_ALUNOSelect] 
    @CODIGO int,
	@COD_ENSINO_ALUNO INT
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN
	IF @CODIGO IS NOT NULL
		SELECT [CODIGO], [COD_ENSINO_ALUNO], [COD_DISCIPLINA], [ATUAL], [CONCLUIDA] 
		FROM   [dbo].[DISCIPLINA_ALUNO] 
		WHERE  ([CODIGO] = @CODIGO OR @CODIGO IS NULL) 
	ELSE
		SELECT [CODIGO], [COD_ENSINO_ALUNO], [COD_DISCIPLINA], [ATUAL], [CONCLUIDA] 
		FROM   [dbo].[DISCIPLINA_ALUNO] 
		WHERE  ([COD_ENSINO_ALUNO] = @COD_ENSINO_ALUNO OR @COD_ENSINO_ALUNO IS NULL) 
	COMMIT