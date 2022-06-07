<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:include href="html5.xsl"/>
  <xsl:template match="/">
    <xsl:value-of select="$html5_start" disable-output-escaping="yes"/>
    <h1>Hipermercado </h1>
    <!-- Tabla global -->
    <h2>Secciones</h2>
    <!-- Completa el atributo select -->
    
    <xsl:apply-templates select=""></xsl:apply-templates>
    <xsl:value-of select="$html5_end" disable-output-escaping="yes"/>
  </xsl:template>
  
  
  
  <!-- Completa el atributo match -->
  <xsl:template match="">
    <table>
      <thead>
        <tr>
          <th class="categoria_padre">
            <!-- Completa con la expresión que obtenga el nombre de la categoría PADRE -->
            <xsl:value-of select=""/>
          </th>
        </tr>
      </thead>
      <tbody>
      <!-- Busca entre las categorías que tienen un padre aquellas cuyo atributo indiquen que pertenecen a la categoría PADRE -->
        <xsl:for-each select="">
              
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>
 
</xsl:stylesheet>
