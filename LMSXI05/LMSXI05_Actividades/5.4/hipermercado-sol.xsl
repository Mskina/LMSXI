<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:include href="html5.xsl"/>
  <xsl:template match="/">
    <xsl:value-of select="$html5_start" disable-output-escaping="yes"/>
    <h1>Hipermercado </h1>
    <!-- Tabla global -->
    <h2>Secciones</h2>
    <!-- Completa el atributo select -->
    <!-- No podemos usar //categoria porque el producto tiene un subelemento llamado también categoria-->
    <xsl:apply-templates select="//categorias/categoria[not(@padreCategoriaID)]">
<xsl:sort select="nombre"></xsl:sort>    
    </xsl:apply-templates>
    <xsl:value-of select="$html5_end" disable-output-escaping="yes"/>
  </xsl:template>
  
  
  
  <!-- Completa el atributo match -->
  <!-- No podemos usar //categoria porque el producto tiene un subelemento llamado también categoria-->
  <xsl:template match="//categorias/categoria[not(@padreCategoriaID)]">
    <table>
      <thead>
        <tr>
          <th class="categoria_padre">
            <!-- Completa con la expresión que obtenga el nombre de la categoría PADRE -->
            <xsl:value-of select="nombre"/>
          </th>
        </tr>
      </thead>
      <tbody>
        <xsl:variable name="catID" select="categoriaID"/>      
        <xsl:for-each select="//categorias/categoria[@padreCategoriaID]">
        <xsl:sort select="nombre"></xsl:sort>    
          <xsl:if test="@padreCategoriaID=$catID">
            <!-- Tomamos el id de la categoria hija y lo guardamos en una variable subCatID -->
            <xsl:variable name="subCatID" select="categoriaID"/>
            <tr>
              <td>
                <!-- Mostramos el nombre de la subcategoría -->
                <xsl:value-of select="nombre"/>
                <!-- Mostramos el número de productos que tienen por categoría el identificador de la subcategoría -->
                <xsl:value-of select="concat('(', count(//producto[categoria=$subCatID]), ')')"/>
              </td>
            </tr>
          </xsl:if>        
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:template>
 
</xsl:stylesheet>
