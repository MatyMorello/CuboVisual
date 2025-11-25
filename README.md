# Proyecto BI: Data Warehouse + Cubo Multidimensional (SSAS) + ETL

Este proyecto implementa un **Data Warehouse**, un **Cubo Multidimensional** en **SQL Server Analysis Services (SSAS)** y un proceso **ETL** utilizando **SQL Server** y **Visual Studio**.  
Fue desarrollado como parte de un trabajo práctico universitario sobre **Business Intelligence**, **OLAP** y **procesos de integración de datos**.

---

## Arquitectura del Proyecto

El sistema está basado en tres componentes principales:

### **Base de Datos Operacional (OLTP) – Northwind**
- Base transaccional de origen.
- Se utiliza para extraer información histórica de ventas, productos, clientes y empleados.
- Proporciona las tablas base para el proceso ETL.

### **Data Warehouse (DW) – NorthwindDW**
Modelo en esquema estrella:

#### **Dimensiones:**
- `DimDate`
- `DimCustomer`
- `DimEmployee`
- `DimProduct`
- `DimShipper`
- `DimCategory`

#### **Tabla de Hechos:**
- `FactOrders`
- Contiene métricas como:
  - Cantidad
  - Precio unitario
  - Total vendido
  - Descuento
  - Costos
  - ID de claves sustitutas

Las claves técnicas fueron generadas mediante **Surrogate Keys** (identidad) y las relaciones se establecieron en base a las dimensiones.

---

## Cubo Multidimensional (SSAS)

Se creó un cubo OLAP que contiene:

### **Medidas:**
- `Total Sales`
- `Quantity`
- `Total Discount`
- `Average Price`
- Entre otras métricas derivadas

### **Dimensiones del cubo:**
- Fecha (Jerarquía: Año → Mes → Día)
- Producto
- Categoría
- Cliente
- Empleado (Jerarquía: País → Región → Ciudad)
- Transportista

### **Funcionalidades soportadas:**
El cubo permite realizar:
- **Roll-up**
- **Drill-down**
- **Slice**
- **Dice**
- **Navegación por jerarquías**
- **Consultas MDX**
- **Conexión vía Excel para Tablas Dinámicas**

---

## Proceso ETL

El proceso ETL está diseñado para:

1. **Extraer** datos desde Northwind (OLTP).
2. **Transformar**:
   - Limpieza de datos
   - Generación de claves sustitutas
   - Cálculo de métricas
   - Normalización de texto
   - Ajustes de tipos de datos
3. **Cargar** los datos en las dimensiones y la tabla de hechos del Data Warehouse.

El ETL puede construirse usando:
- **SSIS (SQL Server Integration Services)**  
o  
- Scripts SQL + procedimientos almacenados

---

## Despliegue del Cubo en SSAS

Para ejecutar el proyecto multidimensional:

1. Abre **Visual Studio** y haz clic derecho en el proyecto → selecciona **Implementar (Deploy)**.
2. Luego, selecciona **Procesar cubo**.
3. Accede al cubo desde:
   - Visual Studio → pestaña **Browser**
   - SQL Server Management Studio → **Consulta MDX**
   - Excel → **Insertar → Tabla dinámica → Fuente OLAP**

El cubo debe estar desplegado en una instancia de SSAS configurada en **modo Multidimensional**.

---

## Requisitos Técnicos

- **SQL Server 2019/2022**  
  - Motor relacional  
  - Analysis Services (modo Multidimensional)  
- **SQL Server Management Studio (SSMS)**
- **Visual Studio 2019/2022** con:
  - Extensión SQL Server Data Tools (SSDT)
- Paquete **Northwind** (OLTP)
- Permisos de administrador en SSAS
