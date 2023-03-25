CREATE VIEW [dbo].[vwAtendimento]
	AS SELECT 
		[CODIGO] ID,
		[NOME] Nome, 
		[COD_DISCIPLINA] DisciplinaId,
		[MENCAO] Mencao,
		[ATIVO] Ativo,
		[ORDEM] Ordem
	FROM 
		ATENDIMENTO Atendimento
