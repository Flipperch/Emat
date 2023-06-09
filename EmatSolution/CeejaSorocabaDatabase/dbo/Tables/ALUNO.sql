﻿CREATE TABLE [dbo].[ALUNO] (
    [N_MAT]                INT            NOT NULL,
    [DT_MAT]               DATETIME       NULL,
    [CPF]                  VARCHAR (MAX)  NULL,
    [RA]                   NVARCHAR (MAX) NULL,
    [RG]                   NVARCHAR (MAX) NULL,
    [UF_RG]                NVARCHAR (MAX) NULL,
    [ORGAO_RG]             NVARCHAR (MAX) NULL,
    [DT_RG]                DATE           NULL,
    [NOME]                 NVARCHAR (MAX) NULL,
    [DT_NASCIMENTO]        DATE           NULL,
    [SEXO]                 INT            NULL,
    [NOME_MAE]             NVARCHAR (MAX) NULL,
    [NOME_PAI]             VARCHAR (MAX)  NULL,
    [ESTADO_CIVIL]         INT            NULL,
    [COR_ORIGEM_ETNICA]    INT            NULL,
    [TELEFONE]             NVARCHAR (MAX) NULL,
    [CELULAR]              NVARCHAR (MAX) NULL,
    [TERMO_MAT]            NVARCHAR (MAX) NULL,
    [E_MAIL]               NVARCHAR (MAX) NULL,
    [ATIVO]                BIT            NULL,
    [CONCLUINTE]           BIT            NULL,
    [OBS_PASSAPORTE]       NVARCHAR (MAX) NULL,
    [APRESENTOU_CERTIDAO]  BIT            NULL,
    [APRESENTOU_HISTORICO] BIT            NULL,
    [NOME_SOCIAL]          NVARCHAR (MAX) NULL,
    [COD_USUARIO]          SMALLINT       NULL,
    [DIG_RA]               VARCHAR (2)    NULL,
    [UF_RA]                VARCHAR (2)    NULL,
    PRIMARY KEY CLUSTERED ([N_MAT] ASC),
    CONSTRAINT [FK_USUARIO_ALUNO] FOREIGN KEY ([COD_USUARIO]) REFERENCES [dbo].[USUARIO] ([CODIGO])
);

