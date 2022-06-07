<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <xsl:element name="direcciones">
      <xsl:apply-templates select="//persona"/>
      </xsl:element>
  
  </xsl:template>
  <xsl:template match="persona">
    <xsl:element name="direccion">
<xsl:attribute name="id">
<xsl:value-of select="@id">
</xsl:value-of>
</xsl:attribute>    

<xsl:apply-templates select="direccion"></xsl:apply-templates>
    </xsl:element>
    

  </xsl:template>
</xsl:stylesheet>