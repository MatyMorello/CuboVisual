CREATE TABLE [dbo].[Dim_PaisProveedor] (
    [PaisProveedor_SKey] INT           NOT NULL,
    [Proveedor_Pais]     NVARCHAR (15) NOT NULL,
    CONSTRAINT [pk_Dim_PaisProveedor] PRIMARY KEY CLUSTERED ([PaisProveedor_SKey] ASC)
);

