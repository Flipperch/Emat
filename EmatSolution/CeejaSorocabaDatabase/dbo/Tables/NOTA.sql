﻿CREATE TABLE [dbo].[NOTA] (
    [COD_ATENDIMENTO_ALUNO] INT        NOT NULL,
    [NOTA]                  FLOAT (53) NOT NULL,
    PRIMARY KEY CLUSTERED ([COD_ATENDIMENTO_ALUNO] ASC),
    CONSTRAINT [FK_ATENDIMENTO_ALUNO_NOTA] FOREIGN KEY ([COD_ATENDIMENTO_ALUNO]) REFERENCES [dbo].[ATENDIMENTO_ALUNO] ([CODIGO])
);
