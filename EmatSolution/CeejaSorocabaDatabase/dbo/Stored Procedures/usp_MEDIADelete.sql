﻿CREATE PROC [dbo].[usp_MEDIADelete] 
    @COD_DISCIPLINA_ALUNO int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	DELETE
	FROM   [dbo].[MEDIA]
	WHERE  [COD_DISCIPLINA_ALUNO] = @COD_DISCIPLINA_ALUNO

	COMMIT