﻿CREATE TABLE [dbo].[MOVIMENTACAO] (
    [CODIGO]           INT           IDENTITY (1, 1) NOT NULL,
    [COD_SITUACAO]     TINYINT       NOT NULL,
    [COD_ENSINO_ALUNO] INT           NULL,
    [COD_USUARIO]      SMALLINT      NOT NULL,
    [DT_MOVIMENTACAO]  DATETIME      NOT NULL,
    [MOTIVO]           VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([CODIGO] ASC),
    CONSTRAINT [FK_ENSINO_ALUNO_INATIVACAO_ALUNO] FOREIGN KEY ([COD_ENSINO_ALUNO]) REFERENCES [dbo].[ENSINO_ALUNO] ([CODIGO]),
    CONSTRAINT [FK_USUARIO_INATIVACAO_ALUNO] FOREIGN KEY ([COD_USUARIO]) REFERENCES [dbo].[USUARIO] ([CODIGO])
);

