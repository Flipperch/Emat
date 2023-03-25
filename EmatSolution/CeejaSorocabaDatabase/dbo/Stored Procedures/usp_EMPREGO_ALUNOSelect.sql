﻿CREATE PROC [dbo].[usp_EMPREGO_ALUNOSelect] 
    @N_MAT int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [N_MAT], [NOME_EMPRESA], [TELEFONE], [COD_CIDADE] 
	FROM   [dbo].[EMPREGO_ALUNO] 
	WHERE  ([N_MAT] = @N_MAT OR @N_MAT IS NULL) 

	COMMIT
