﻿CREATE PROCEDURE [dbo].[DBA_EXLUIR_ALUNO]
	@N_MAT AS INT
AS
	IF @N_MAT IS NOT NULL
	DELETE FROM ENDERECO_ALUNO WHERE N_MAT = @N_MAT
	
	DECLARE @COD_ENSINO_ALUNO INT

	SELECT @COD_ENSINO_ALUNO=CODIGO FROM ENSINO_ALUNO WHERE N_MAT = @N_MAT

	DELETE FROM DISCIPLINA_ALUNO WHERE COD_ENSINO_ALUNO = @COD_ENSINO_ALUNO

	DELETE FROM LOCAL_NASCIMENTO WHERE N_MAT = @N_MAT
	
	DELETE FROM ENSINO_ALUNO WHERE N_MAT = @N_MAT

	DELETE FROM ALUNO WHERE N_MAT = @N_MAT