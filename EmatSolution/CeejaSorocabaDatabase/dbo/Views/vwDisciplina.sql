CREATE VIEW [dbo].[vwDisciplina]
	AS SELECT
		[CODIGO] ID,
		[NOME] Nome,
		[NOME_HISTORICO] NomeHistorico,
		[HORARIO] Horario,
		[CAPACIDADE] Capacidade,
		[ORDEM] Ordem,
		[BLOQ_ATRIBUICAO] BloqueioAtribuicao
	FROM
		DISCIPLINA Disciplina
