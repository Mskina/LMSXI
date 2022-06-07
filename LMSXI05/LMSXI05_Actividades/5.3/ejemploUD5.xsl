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
      &lt;title&gt;Document&lt;/title&gt;
      &lt;link href="estilos.css" rel="stylesheet"/&gt;
			&lt;/head&gt;
			&lt;body&gt;	
</xsl:variable>
  <xsl:template match="/">
    <xsl:value-of select="$html5_start" disable-output-escaping="yes"/>
    <h1>Ejemplo UD05</h1>
    <h2>Convocatoria de Junio</h2>
    <table>
      <thead>
        <tr>
          <th colspan="2">
								Datos
							</th>
          <th colspan="3">
								Notas
							</th>
        </tr>
     
        <tr>
          <th>
								Nombre y apellidos
							</th>
          <th>
								Tareas
							</th>
          <th>
								Cuestionarios
							</th>
          <th>
								Examen
							</th>
          <th>
								Final
							</th>
        </tr>
         </thead>
      <tbody>
        <xsl:for-each select="notas/alumno[@convocatoria='Junio']">
          <!-- El punto indica que se apliquen las plantillas al elemento del contexto actual. El contexto actual lo marca la expresión XPath notas/alumno[@convocatoria='Junio'] que
				obtendrá nodos de elemento alumno. Luego, el contexto actual es el nodo de elemento alumno en cada iteración del for -->
          <xsl:apply-templates select=".">
						</xsl:apply-templates>
        </xsl:for-each>
        <!-- Cuando se haya terminado de iterar por los nodos alumno, calculamos la media de la nota final de los alumnos de 
						Junio -->
        <tr>
          <td colspan="4">Media numérica de la nota final de alumnos de Junio</td>
          <td>
            <!-- Para evitar dividir por cero -->
            <xsl:if test="count(notas/alumno[@convocatoria='Junio']) &gt; 0 ">
              <xsl:value-of select="format-number(sum(notas/alumno[@convocatoria='Junio']/final) div count(notas/alumno[@convocatoria='Junio']), '##.##')"/>
            </xsl:if>
            <xsl:if test="count(notas/alumno[@convocatoria='Junio']) =0 ">
								0
							</xsl:if>
          </td>
        </tr>
      </tbody>
    </table>
    <xsl:text disable-output-escaping="yes">
			&lt;/body&gt;
		&lt;/html&gt;
		</xsl:text>
  </xsl:template>
  <xsl:template match="alumno">
    <tr>
      <td>
        <xsl:value-of select="concat(nombre, ' ',  apellidos)"/>
      </td>
      <td>
        <xsl:value-of select="tareas"/>
      </td>
      <td>
        <xsl:value-of select="cuestionarios"/>
      </td>
      <td>
        <xsl:value-of select="examen"/>
      </td>
      <!-- Para aplicar la clase CSS a la celda, usaremos una variable. En función 
				del valor de la calificación final del alumno, se asigna su valor a suspenso 
				o aprobado -->
      <xsl:variable name="aprobado_suspenso">
        <xsl:choose>
          <xsl:when test="final >= 5.0">
            <xsl:value-of select="'aprobado'"/>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="'suspenso'"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:variable>
      <!-- Y ahora, se utiliza el valor de la variable para la clase -->
      <td class="{$aprobado_suspenso}">
        <!--Aquí hubo que poner el 5.0, con 5 no funcionaba -->
        <xsl:choose>
          <xsl:when test="final &lt; 5.0">
						INSUFICIENTE
					</xsl:when>
          <xsl:when test="(final &gt;=5.0) and                    ( final &lt; 6.0)">
						SUFICIENTE
					</xsl:when>
          <xsl:when test="(final &gt;=6.0) and                     ( final &lt; 7.0)">
						BIEN
					</xsl:when>
          <xsl:when test="(final &gt;=7.0) and                     ( final &lt; 9.0)">
						NOTABLE
					</xsl:when>
          <xsl:when test="(final &gt;=9.0)">
						SOBRESALIENTE
					</xsl:when>
          <xsl:otherwise>
						ERROR
					</xsl:otherwise>
        </xsl:choose>
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
