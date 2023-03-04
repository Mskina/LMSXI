DECLARE @categorias xml
SELECT @categorias = aliasColumna
FROM OPENROWSET (BULK 'C:\Users\wadmin\Desktop\Ejemplos_UD06\Tarea06.2\categorias.xml', SINGLE_BLOB)
AS aliasTabla (aliasColumna)
SELECT @categorias
DECLARE @hdoc int
EXEC sp_xml_preparedocument @hdoc OUTPUT, @categorias

INSERT INTO AdventureWorksLT2016.SalesLT.ProductCategory(ParentProductCategoryID,Name)
SELECT ParentProductCategoryID,Name
FROM OPENXML (@hdoc, '/Categories/Category' , 2)
WITH(
	ParentProductCategoryID int,
	Name nvarchar(30)
 )
EXEC sp_xml_removedocument @hdoc
