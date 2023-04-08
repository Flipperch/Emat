CREATE VIEW [dbo].[vwEnsino]
	AS SELECT 
		[CODIGO] EnsinoId,
		[NOME_ENSINO] NomeEnsino
	FROM
		ENSINO Ensino
