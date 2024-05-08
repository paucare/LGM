<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<body>

<xsl:if test="document/grade &gt;= 70">

<p>enhorabuena has aprobado con: <xsl:value-of select="document/grade"/>.</p>

</xsl:if>

<xsl:if test="document/grade &lt; 70">

<p>lo siento, has suspendido tu nota es: <xsl:value-of select="document/grade"/>.</p>

</xsl:if>

</body>

</html>

</xsl:template>

</xsl:stylesheet>