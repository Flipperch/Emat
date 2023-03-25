﻿--DROP PROC ADD_ALUNO
CREATE PROCEDURE [dbo].[ADD_ALUNO]
	@N_MAT int,
	@TERMO_MAT nvarchar(MAX) = NULL,    
	@RG nvarchar(MAX) = NULL,
	@RA nvarchar(MAX) = NULL,
	@NOME nvarchar(MAX) = NULL,
	@DT_NASCIMENTO date = NULL,
    @DT_MAT datetime = NULL,       
	@TELEFONE nvarchar(MAX) = NULL,
    @CELULAR nvarchar(MAX) = NULL,   
    @SEXO int = NULL,
	@COD_CIDADE INT,
    @DT_INICIO datetime = @DT_MAT
  
AS
INSERT INTO ALUNO (N_MAT, TERMO_MAT, RG, RA, NOME, DT_NASCIMENTO, DT_MAT, TELEFONE, COR_ORIGEM_ETNICA, ESTADO_CIVIL, SEXO, CONCLUINTE, ATIVO, APRESENTOU_CERTIDAO, APRESENTOU_HISTORICO, COD_USUARIO )
SELECT @N_MAT, @TERMO_MAT, @RG, @RA, @NOME, @DT_NASCIMENTO, @DT_MAT, @TELEFONE, 6, 1, @SEXO, 0, 1, 0,0,1
--ENDEREÇO_ALUNO
INSERT INTO [dbo].[ENDERECO_ALUNO] ([N_MAT], [COD_CIDADE], [NUMERO])
SELECT @N_MAT, @COD_CIDADE, 0
--ENSINO_ALUNO
INSERT INTO [dbo].[ENSINO_ALUNO] ([N_MAT], [COD_ENSINO], [ATUAL], [DT_INICIO])
SELECT @N_MAT, 2, 1, @DT_INICIO
DECLARE @COD_ENSINO_NOVO int

SET @COD_ENSINO_NOVO = SCOPE_IDENTITY()
--DISCIPLINA_ALUNO
INSERT INTO [dbo].[DISCIPLINA_ALUNO] ([COD_ENSINO_ALUNO], [COD_DISCIPLINA], [ATUAL], [CONCLUIDA])
SELECT @COD_ENSINO_NOVO, 1, 1, 0
