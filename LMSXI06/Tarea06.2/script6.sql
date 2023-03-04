DECLARE @acta xml
SELECT @acta = aliasColumna
FROM OPENROWSET (BULK 'C:\Users\wadmin\Desktop\Ejemplos_UD06\Tarea06.2\4_acta_xsd.xml', SINGLE_BLOB)
AS aliasTabla (aliasColumna)
SELECT @acta
DECLARE @hdoc int
EXEC sp_xml_preparedocument @hdoc OUTPUT, @acta

INSERT INTO Acta(CursoActa, CicloActa, EvalActa, FechaActa, DocActa)
SELECT CursoActa, CicloActa, EvalActa, FechaActa, DocActa
FROM OPENXML (@hdoc, '/acta' , 3)
WITH(
	CursoActa varchar(9) './curso', 
	CicloActa varchar(35) '@ciclo',
	EvalActa varchar(10) '@eval',
	FechaActa datetime './fecha',
	DocActa XML '.'
 )
EXEC sp_xml_removedocument @hdoc
