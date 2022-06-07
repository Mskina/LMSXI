<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    
    <xsl:template match="identificadores">
        <xsl:value-of select="nombre"/>,  
        <xsl:value-of select="apellidos"/>
    </xsl:template>

    <xsl:template match="persona">
        <xsl:apply-templates select="identificadores"></xsl:apply-templates>
    </xsl:template>
</xsl:stylesheet>