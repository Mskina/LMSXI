<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
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
      &lt;title&gt;Tarea05.2&lt;/title&gt;
      &lt;link href="estilos.css" rel="stylesheet"/&gt;
			&lt;/head&gt;
			&lt;body&gt;
</xsl:variable>
  <xsl:variable name="html5_end">
			&lt;/body&gt;
			&lt;/html&gt;
</xsl:variable>
  <xsl:template match="/">
    <!-- Utiliza la variable que corresponda para sacar el marcado html 5 -->
    <xsl:value-of select="$html5_start" disable-output-escaping="yes"/>
    <h1>Acta de evaluación </h1>
    
    <!-- Tabla global -->
    <table>
      <thead>
        <tr>
          <th>Ciclo</th>
          <th>Modalidad</th>
          <th>Curso</th>
          <th>Eval</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><xsl:value-of select="acta/@ciclo"/></td>
          <td><xsl:value-of select="acta/@tipo"/></td>
          <td><xsl:value-of select="acta/curso"/></td>
          <td><xsl:value-of select="acta/@eval"/></td>
        </tr>
        <!-- tutores -->
        <xsl:for-each select="acta/tutor">
         <tr>
            <td>Tutor/a <xsl:value-of select="position()"/>:</td>
           <td colspan="3"><xsl:value-of select="concat(nombre,' ',  apellido1,' ', apellido2)"/></td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
    
    <xsl:for-each select="acta/modulo">
      <xsl:apply-templates select=".">
      </xsl:apply-templates>
    </xsl:for-each>
    
    Fecha:<xsl:text> </xsl:text><xsl:value-of select="acta/fecha"/>
    <!-- Uso de variable que corresponda para cerrar marcado html5 -->
    <xsl:value-of select="$html5_end" disable-output-escaping="yes"/>
  </xsl:template>
  
  
  
  <xsl:template match="modulo">
    <table>
      <thead>
        <tr>
          <th colspan="2" class="modulo_title"><xsl:value-of select="@codigo"/></th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="alumno">
          <xsl:sort select="apellido1"/>

          <!--Defino variable para asignar clase según cualificación-->
          <xsl:variable name="apro_susp">
            <xsl:choose>
              <xsl:when test="cualificacion >= 5.0">
                <xsl:value-of select="'aprobado'"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:value-of select="'suspenso'"/>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:variable>


          <tr>
            <td><xsl:value-of select="concat(nombre,' ',  apellido1,' ', apellido2)"/></td>
            <td class="{$apro_susp}"><xsl:value-of select="cualificacion"/></td>
          </tr>
        </xsl:for-each>
        
        
        <tr>
          <td class="total">Total aprobados/Total alumnos</td>
          <td><xsl:value-of select="count(alumno[number(cualificacion) >= 5])"/> / <xsl:value-of select="count(alumno)"/></td>
        </tr>
        <tr>
          <td>Profesor/a:</td>
          <td class="profesor"><xsl:value-of select="concat(profesor/nombre,' ', profesor/apellido1,' ', profesor/apellido2)"/></td>
        </tr>
      </tbody>
    </table>
  </xsl:template>
</xsl:stylesheet>