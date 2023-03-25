CREATE VIEW [dbo].[vwMatricula]
	AS SELECT 
		[CODIGO] ID,
		[N_MAT] MumeroMatricula,
		[COD_ENSINO] EnsinoId, 
		[ATUAL] Atual, 
		[DT_INICIO] DataInicio,
		[DT_TERMINO] DataTermino 
	FROM 
		ENSINO_ALUNO Matricula
