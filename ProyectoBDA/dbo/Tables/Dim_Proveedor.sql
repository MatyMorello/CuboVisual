CREATE TABLE [dbo].[Dim_Proveedor] (
    [Proveedor_SKey]     INT           NOT NULL,
    [Proveedor_ID]       INT           NOT NULL,
    [Proveedor_Nombre]   NVARCHAR (40) NOT NULL,
    [PaisProveedor_SKey] INT           NOT NULL,
    CONSTRAINT [pk_Dim_Proveedor] PRIMARY KEY CLUSTERED ([Proveedor_SKey] ASC),
    CONSTRAINT [fk_Dim_Proveedor_Dim_PaisProveedor] FOREIGN KEY ([PaisProveedor_SKey]) REFERENCES [dbo].[Dim_PaisProveedor] ([PaisProveedor_SKey])
);

