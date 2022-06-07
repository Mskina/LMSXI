<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
>
  <!-- Documento de salida con html -->
  <xsl:output method="html" encoding="utf-8" indent="yes" omit-xml-declaration="yes"/>
  <!-- Uso de una variable para reutilizar el comienzo del código HTML5 -->
  <xsl:variable name="html5_start">
&lt;!DOCTYPE html&gt;
		&lt;html lang="es"&gt;
			&lt;head&gt;
			 &lt;meta charset="UTF-8"/&gt;
      &lt;meta http-equiv="X-UA-Compatible" content="IE=edge"/&gt;
      &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"/&gt;
      &lt;title&gt;Document&lt;/title&gt;
      &lt;link href="estilos.css" rel="stylesheet"/&gt;
			&lt;/head&gt;
			&lt;body&gt;	
</xsl:variable>

 <!-- Uso de una variable para reutilizar el fin del código HTML5 -->
<xsl:variable name="html5_end">
&lt;/body>
&lt;/html>
</xsl:variable>



</xsl:stylesheet>
