CREATE TABLE [dbo].[Dim_Producto] (
    [Producto_SKey]           INT           NOT NULL,
    [Producto_ID]             INT           NOT NULL,
    [Producto_Nombre]         NVARCHAR (60) NOT NULL,
    [Producto_PUnitario]      MONEY         NULL,
    [Producto_Categoria_SKey] INT           NOT NULL,
    CONSTRAINT [pk_Dim_Producto] PRIMARY KEY CLUSTERED ([Producto_SKey] ASC),
    CONSTRAINT [fk_Dim_Producto_Dim_Categoria] FOREIGN KEY ([Producto_Categoria_SKey]) REFERENCES [dbo].[Dim_Categoria] ([Categoria_SKey])
);

