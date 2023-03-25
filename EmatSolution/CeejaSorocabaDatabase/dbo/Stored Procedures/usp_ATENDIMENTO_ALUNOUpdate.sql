﻿CREATE PROC [dbo].[usp_ATENDIMENTO_ALUNOUpdate] 
    @CODIGO int,
    @COD_DISCIPLINA_ALUNO int,
    @COD_ATENDIMENTO smallint,
    @COD_PROFESSOR smallint,
    @DT_ATENDIMENTO datetime,
    @COD_PROFESSOR_MODIFICACAO smallint = NULL,
    @DT_MODIFICACAO datetime = NULL,
    @MODULO varchar(20) = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN

	UPDATE [dbo].[ATENDIMENTO_ALUNO]
	SET    [COD_DISCIPLINA_ALUNO] = @COD_DISCIPLINA_ALUNO, [COD_ATENDIMENTO] = @COD_ATENDIMENTO, [COD_PROFESSOR] = @COD_PROFESSOR, [DT_ATENDIMENTO] = @DT_ATENDIMENTO, [COD_PROFESSOR_MODIFICACAO] = @COD_PROFESSOR_MODIFICACAO, [DT_MODIFICACAO] = @DT_MODIFICACAO, [MODULO] = @MODULO
	WHERE  [CODIGO] = @CODIGO
	
	-- Begin Return Select <- do not remove
	SELECT [CODIGO], [COD_DISCIPLINA_ALUNO], [COD_ATENDIMENTO], [COD_PROFESSOR], [DT_ATENDIMENTO], [COD_PROFESSOR_MODIFICACAO], [DT_MODIFICACAO], [MODULO]
	FROM   [dbo].[ATENDIMENTO_ALUNO]
	WHERE  [CODIGO] = @CODIGO	
	-- End Return Select <- do not remove

	COMMIT