CREATE TABLE [dbo].[MASCOTA]
(
[IDMASC] [int] NOT NULL IDENTITY(1, 1),
[TIPMASC] [varchar] (15) COLLATE Modern_Spanish_CI_AS NOT NULL,
[ESTMASC] [char] (1) COLLATE Modern_Spanish_CI_AS NOT NULL,
[IDETA] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MASCOTA] ADD CONSTRAINT [MASCOTA_pk] PRIMARY KEY CLUSTERED ([IDMASC]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MASCOTA] ADD CONSTRAINT [MASCOTA_ETAPA] FOREIGN KEY ([IDETA]) REFERENCES [dbo].[ETAPA] ([IDETA])
GO
