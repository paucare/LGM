<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>

<body>

<xsl:choose>

<xsl:when test="document/grade &lt; 5">

<p>Estás suspendido.</p>

</xsl:when>

<xsl:when test="document/grade &lt;= 6">

<p>Tienes un bien.</p>

</xsl:when>

<xsl:when test="document/grade &lt;= 8">

<p>Tienes un notable.</p>

</xsl:when>

<xsl:otherwise>

<p>Tienes un sobresaliente.</p>

</xsl:otherwise>

</xsl:choose>

</body>

</html>

</xsl:template>

</xsl:stylesheet>