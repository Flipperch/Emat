﻿CREATE PROC [dbo].[usp_ATIVIDADE_EXTRASelect] 
    @COD_ENSINO_ALUNO int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [COD_ENSINO_ALUNO], [COD_USUARIO], [DT_ATIVIDADE_EXTRA] 
	FROM   [dbo].[ATIVIDADE_EXTRA] 
	WHERE  ([COD_ENSINO_ALUNO] = @COD_ENSINO_ALUNO OR @COD_ENSINO_ALUNO IS NULL) 

	COMMIT