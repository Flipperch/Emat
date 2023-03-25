﻿CREATE PROC [dbo].[usp_DISCIPLINAInsert] 
    @NOME varchar(MAX) = NULL,
    @NOME_HISTORICO varchar(MAX) = NULL,
    @HORARIO varchar(MAX) = NULL,
    @CAPACIDADE varchar(MAX) = NULL,
    @ORDEM tinyint = NULL,
    @BLOQ_ATRIBUICAO bit = NULL
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  
	
	BEGIN TRAN
	
	INSERT INTO [dbo].[DISCIPLINA] ([NOME], [NOME_HISTORICO], [HORARIO], [CAPACIDADE], [ORDEM], [BLOQ_ATRIBUICAO])
	SELECT @NOME, @NOME_HISTORICO, @HORARIO, @CAPACIDADE, @ORDEM, @BLOQ_ATRIBUICAO
	
	-- Begin Return Select <- do not remove
	SELECT [CODIGO], [NOME], [NOME_HISTORICO], [HORARIO], [CAPACIDADE], [ORDEM], [BLOQ_ATRIBUICAO]
	FROM   [dbo].[DISCIPLINA]
	WHERE  [CODIGO] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove
               
	COMMIT