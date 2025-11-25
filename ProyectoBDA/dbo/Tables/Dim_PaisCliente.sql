CREATE TABLE [dbo].[Dim_PaisCliente] (
    [PaisCliente_SKey] INT           NOT NULL,
    [Cliente_Pais]     NVARCHAR (15) NOT NULL,
    CONSTRAINT [pk_Dim_PaisCliente] PRIMARY KEY CLUSTERED ([PaisCliente_SKey] ASC)
);

