DECLARE @documentoXML xml
SELECT @documentoXML = aliasColumna
FROM OPENROWSET (BULK 'C:\Users\wadmin\Desktop\Ejemplos_UD06\Tarea06.2\4_acta_xsd.xml', SINGLE_BLOB)
AS aliasTabla (aliasColumna)
SELECT @documentoXML
DECLARE @hdoc int
EXEC sp_xml_preparedocument @hdoc OUTPUT, @documentoXML
SELECT *
FROM OPENXML (@hdoc, '/' , 2)
WITH(
 Doc XML '.'
 )