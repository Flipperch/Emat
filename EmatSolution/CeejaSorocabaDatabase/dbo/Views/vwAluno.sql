CREATE VIEW [dbo].[vwAluno]
	AS
	SELECT
		[N_MAT] NumeroMatricula,
		[DT_MAT] DataMatricula,
		[CPF] Cpf,
		[RA] Ra,
		[RG] Rg,
		[UF_RG] UfRg,
		[ORGAO_RG] OrgaoRg,
		[DT_RG] DataRg,
		[NOME] Nome,
		[DT_NASCIMENTO] DataNascimento,
		[SEXO] Sexo,
		[NOME_MAE] NomeMae,
		[NOME_PAI] NomePai,
		[ESTADO_CIVIL] EstadoCivil,
		[COR_ORIGEM_ETNICA] CorOrigemEtnica,
		[TELEFONE] Telefone,
		[CELULAR] Celular,
		[TERMO_MAT] TermoMatricula,
		[E_MAIL] Email,
		[ATIVO] Ativo,
		[CONCLUINTE] Concluinte,
		[OBS_PASSAPORTE] ObservacaoPassaporte,
		[APRESENTOU_CERTIDAO] ApresentouCertidao,
		[APRESENTOU_HISTORICO] ApresentouHistorico,
		[NOME_SOCIAL] NomeSocial,
		[COD_USUARIO] UsuarioId,
		[DIG_RA] DigRa,
		[UF_RA] UfRa
	FROM
		ALUNO Aluno
