﻿CREATE PROC [dbo].[usp_MEDIAUpdate] 
	@INSTITUICAO VARCHAR(50),
	@COD_CIDADE int,
    @COD_DISCIPLINA_ALUNO int,
    @VALOR varchar(20),
    @DT_MEDIA date,
    @COD_USUARIO smallint,
    @COD_USUARIO_MODIFICACAO smallint = NULL,
    @DT_MODIFICACAO datetime = NULL,
    @COD_ATENDIMENTO_ALUNO int = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[MEDIA]
	SET    [INSTITUICAO] = @INSTITUICAO, [COD_CIDADE] = @COD_CIDADE, [COD_DISCIPLINA_ALUNO] = @COD_DISCIPLINA_ALUNO, [VALOR] = @VALOR, [DT_MEDIA] = @DT_MEDIA, [COD_USUARIO] = @COD_USUARIO, [COD_USUARIO_MODIFICACAO] = @COD_USUARIO_MODIFICACAO, [DT_MODIFICACAO] = @DT_MODIFICACAO, [COD_ATENDIMENTO_ALUNO] = @COD_ATENDIMENTO_ALUNO
	WHERE  [COD_DISCIPLINA_ALUNO] = @COD_DISCIPLINA_ALUNO
	
	-- Begin Return Select <- do not remove
	SELECT [INSTITUICAO], [COD_CIDADE], [COD_DISCIPLINA_ALUNO], [VALOR], [DT_MEDIA], [COD_USUARIO], [COD_USUARIO_MODIFICACAO], [DT_MODIFICACAO], [COD_ATENDIMENTO_ALUNO]
	FROM   [dbo].[MEDIA]
	WHERE  [COD_DISCIPLINA_ALUNO] = @COD_DISCIPLINA_ALUNO	
	-- End Return Select <- do not remove

	COMMIT