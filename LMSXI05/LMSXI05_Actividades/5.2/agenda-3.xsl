<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <xsl:element name="contactos_proximos">
      <xsl:apply-templates select="//persona[direccion/cp=/agenda/propietario//cp]"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="persona">
    <xsl:element name="persona">
      <xsl:attribute name="id">
        <xsl:value-of select="@id">
</xsl:value-of>
      </xsl:attribute>
  
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
