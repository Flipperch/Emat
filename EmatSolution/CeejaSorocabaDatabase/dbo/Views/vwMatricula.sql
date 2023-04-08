CREATE VIEW [dbo].[vwMatricula]
	AS SELECT 
		[CODIGO] MatriculaId,
		[N_MAT] MumeroMatricula,
		[COD_ENSINO] EnsinoId, 
		[ATUAL] Atual, 
		[DT_INICIO] DataInicio,
		[DT_TERMINO] DataTermino 
	FROM 
		ENSINO_ALUNO Matricula
