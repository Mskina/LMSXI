SELECT ProductID as '@productoID',
Name as nombre,
ProductNumber as referencia,
StandardCost as precio_estandar,
ListPrice as precio_venta
 FROM [AdventureWorksLT2016].[SalesLT].[Product]
 FOR XML PATH ('Product'), root('Productos')