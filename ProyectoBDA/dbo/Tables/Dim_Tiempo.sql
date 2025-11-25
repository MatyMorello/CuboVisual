CREATE TABLE [dbo].[Dim_Tiempo] (
    [Tiempo_Skey]                  INT           NOT NULL,
    [Tiempo_Fecha]                 DATE          NOT NULL,
    [Tiempo_Año]                   INT           NOT NULL,
    [Tiempo_Trimestre]             INT           NOT NULL,
    [Tiempo_Mes]                   INT           NOT NULL,
    [Tiempo_DiaDeMes]              INT           NOT NULL,
    [Tiempo_Descripcion_Trimestre] NVARCHAR (15) NULL,
    [Tiempo_Descripcion_Mes]       NVARCHAR (10) NULL,
    CONSTRAINT [pk_Dim_Tiempo] PRIMARY KEY CLUSTERED ([Tiempo_Skey] ASC)
);

