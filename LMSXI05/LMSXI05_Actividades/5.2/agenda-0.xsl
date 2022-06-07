<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <xsl:element name="nombres">
      <xsl:apply-templates select="//nombre"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="nombre">
    <xsl:element name="nombre">
      <xsl:value-of select="."/>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
