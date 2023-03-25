﻿CREATE PROC [dbo].[usp_LOCAL_NASCIMENTOSelect] 
    @N_MAT int
AS 
	SET NOCOUNT ON 
	SET XACT_ABORT ON  

	BEGIN TRAN

	SELECT [N_MAT], [COD_CIDADE] 
	FROM   [dbo].[LOCAL_NASCIMENTO] 
	WHERE  ([N_MAT] = @N_MAT OR @N_MAT IS NULL) 

	COMMIT
