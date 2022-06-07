<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <xsl:element name="nombres">
      <xsl:apply-templates select="//identificadores"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="identificadores">
    <xsl:element name="nombre_completo">
      <xsl:value-of select="nombre"/>
      <xsl:text>&#x20;</xsl:text>     
        <xsl:value-of select="apellidos"/>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>