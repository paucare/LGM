<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
version="1.0">

 <xsl:template match="/">
 <html>
 <body>
 <ol>
 <xsl:apply-templates select="nombres/nombre"/>
 </ol>
 </body>
 </html>
 </xsl:template>
 <xsl:template match="nombre">
 <li><xsl:value-of select="."/></li>
 </xsl:template>
</xsl:stylesheet>