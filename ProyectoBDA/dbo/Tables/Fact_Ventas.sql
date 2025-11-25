CREATE TABLE [dbo].[Fact_Ventas] (
    [Cliente_SKey]    INT   NOT NULL,
    [Empleado_SKey]   INT   NOT NULL,
    [Producto_SKey]   INT   NOT NULL,
    [Proveedor_SKey]  INT   NOT NULL,
    [Tiempo_Skey]     INT   NOT NULL,
    [Ventas_Unidades] INT   NOT NULL,
    [Ventas_Monto]    MONEY NOT NULL,
    CONSTRAINT [pk_Fact_Ventas] PRIMARY KEY CLUSTERED ([Cliente_SKey] ASC, [Empleado_SKey] ASC, [Producto_SKey] ASC, [Proveedor_SKey] ASC, [Tiempo_Skey] ASC),
    CONSTRAINT [fk_Fact_Ventas_Dim_Cliente] FOREIGN KEY ([Cliente_SKey]) REFERENCES [dbo].[Dim_Cliente] ([Cliente_SKey]),
    CONSTRAINT [fk_Fact_Ventas_Dim_Empleado] FOREIGN KEY ([Empleado_SKey]) REFERENCES [dbo].[Dim_Empleado] ([Empleado_SKey]),
    CONSTRAINT [fk_Fact_Ventas_Dim_Producto] FOREIGN KEY ([Producto_SKey]) REFERENCES [dbo].[Dim_Producto] ([Producto_SKey]),
    CONSTRAINT [fk_Fact_Ventas_Dim_Proveedor] FOREIGN KEY ([Proveedor_SKey]) REFERENCES [dbo].[Dim_Proveedor] ([Proveedor_SKey]),
    CONSTRAINT [fk_Fact_Ventas_Dim_Tiempo] FOREIGN KEY ([Tiempo_Skey]) REFERENCES [dbo].[Dim_Tiempo] ([Tiempo_Skey])
);

