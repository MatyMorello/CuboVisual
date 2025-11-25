CREATE TABLE [dbo].[Dim_Cliente] (
    [Cliente_SKey]     INT           NOT NULL,
    [Cliente_ID]       NVARCHAR (5)  NOT NULL,
    [Cliente_Nombre]   NVARCHAR (40) NOT NULL,
    [PaisCliente_SKey] INT           NOT NULL,
    CONSTRAINT [pk_Dim_Cliente] PRIMARY KEY CLUSTERED ([Cliente_SKey] ASC),
    CONSTRAINT [fk_Dim_Cliente_Dim_PaisCliente] FOREIGN KEY ([PaisCliente_SKey]) REFERENCES [dbo].[Dim_PaisCliente] ([PaisCliente_SKey])
);

