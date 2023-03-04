SELECT ParentProductCategoryID as '@padreCategoriaID',
ProductCategoryID as categoriaID,
Name as nombre
 FROM [AdventureWorksLT2016].[SalesLT].[ProductCategory]
 FOR XML PATH ('Categoria'), root('Categorias')