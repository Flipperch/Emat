CREATE VIEW [dbo].[vwUsuario]
	AS SELECT
	[CODIGO] as ID, 
	[NOME] as Nome,
	[NOME_ACESSO] as NomeAcesso,
	[SENHA] as Senha,
	[RG] as Rg, 
	[NIVEL_ACESSO] as NivelAcesso, 
	[ATIVO] as Ativo
	FROM
	dbo.USUARIO as Usuario
