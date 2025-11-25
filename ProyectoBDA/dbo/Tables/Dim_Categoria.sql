CREATE TABLE [dbo].[Dim_Categoria] (
    [Categoria_SKey]        INT            NOT NULL,
    [Categoria_ID]          INT            NOT NULL,
    [Categoria_Nombre]      NVARCHAR (20)  NOT NULL,
    [Categoria_Descripcion] NVARCHAR (100) NOT NULL,
    CONSTRAINT [pk_Dim_Categoria] PRIMARY KEY CLUSTERED ([Categoria_SKey] ASC)
);

