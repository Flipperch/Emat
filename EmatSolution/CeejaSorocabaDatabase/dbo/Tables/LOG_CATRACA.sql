﻿CREATE TABLE [dbo].[LOG_CATRACA] (
    [CODIGO]            INT      IDENTITY (1, 1) NOT NULL,
    [COD_CARTAO_ACESSO] INT      NOT NULL,
    [DATA_HORA]         DATETIME NOT NULL,
    [SENTIDO]           BIT      NULL,
    PRIMARY KEY CLUSTERED ([CODIGO] ASC)
);
