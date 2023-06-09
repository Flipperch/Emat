﻿CREATE PROC [dbo].[usp_ATENDIMENTO_ALUNOInsert] 
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
	
	INSERT INTO [dbo].[ATENDIMENTO_ALUNO] ([COD_DISCIPLINA_ALUNO], [COD_ATENDIMENTO], [COD_PROFESSOR], [DT_ATENDIMENTO], [COD_PROFESSOR_MODIFICACAO], [DT_MODIFICACAO], [MODULO])
	SELECT @COD_DISCIPLINA_ALUNO, @COD_ATENDIMENTO, @COD_PROFESSOR, @DT_ATENDIMENTO, @COD_PROFESSOR_MODIFICACAO, @DT_MODIFICACAO, @MODULO
	
	-- Begin Return Select <- do not remove
	SELECT [CODIGO], [COD_DISCIPLINA_ALUNO], [COD_ATENDIMENTO], [COD_PROFESSOR], [DT_ATENDIMENTO], [COD_PROFESSOR_MODIFICACAO], [DT_MODIFICACAO], [MODULO]
	FROM   [dbo].[ATENDIMENTO_ALUNO]
	WHERE  [CODIGO] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT
