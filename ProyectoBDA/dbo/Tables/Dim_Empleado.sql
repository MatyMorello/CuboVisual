CREATE TABLE [dbo].[Dim_Empleado] (
    [Empleado_SKey]           INT           NOT NULL,
    [Empleado_ID]             INT           NOT NULL,
    [Empleado_NombreCompleto] NVARCHAR (50) NOT NULL,
    CONSTRAINT [pk_Dim_Empleado] PRIMARY KEY CLUSTERED ([Empleado_SKey] ASC)
);

