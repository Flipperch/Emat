CREATE TABLE [dbo].[tbRaNormalizado]
(
    [NumeroMatricula] INT NOT NULL, 
    [Ra] VARCHAR(12) NOT NULL, 
    [DigRa] VARCHAR NULL, 
    [UfRa] VARCHAR(2) NOT NULL, 
    CONSTRAINT [FK_tbRaNormalizado_ALUNO] FOREIGN KEY ([NumeroMatricula]) REFERENCES [ALUNO]([N_MAT])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Exemplo "SP"',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'tbRaNormalizado',
    @level2type = N'COLUMN',
    @level2name = N'UfRa'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Pode ser dígito ou "x"',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'tbRaNormalizado',
    @level2type = N'COLUMN',
    @level2name = N'DigRa'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Número com 12 dígitos. Zero a esquerda.',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'tbRaNormalizado',
    @level2type = N'COLUMN',
    @level2name = N'Ra'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Referencia CEEJA',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'tbRaNormalizado',
    @level2type = N'COLUMN',
    @level2name = N'NumeroMatricula'