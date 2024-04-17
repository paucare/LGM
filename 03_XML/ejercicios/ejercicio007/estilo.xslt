<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Alumnos</title>
                <link rel="stylesheet" href="css/style.css" type="text/css"/>
            </head>
            <body>
                <h2>Alumnos Matriculados 2020-2021</h2>
                
                <table>
                    <tr>
                        <th>Matricula</th>
                        <th>Nombre </th>
                        <th>Apellidos </th>
                        <th>Matematicas</th>
                        <th>Lengua Castellana</th>
                        <th>Inglés</th>
                    </tr>
                    
                    <xsl:for-each select="alumnos/alumno">
                        <xsl:if test="(@anio='2020') or (@anio='2021')">
                    
                            <!--contains(@anio, '2020') or contains(@anio, '2021')/> -->
          
                            <tr>    
                                <td><xsl:value-of select= "@matricula"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                
                                <xsl:for-each select="asignaturas/asignatura">
                                    <td>
                                        <xsl:choose>
                                            <xsl:when test="nota &lt; 5">Suspenso</xsl:when>
                                            <xsl:when test="nota &lt; 6">Suficiente</xsl:when>
                                            <xsl:when test="nota &lt; 7">Bien</xsl:when>
                                            <xsl:when test="nota &lt; 9">Notable</xsl:when>
                                            <xsl:otherwise>Sobresaliente</xsl:otherwise>
                                        </xsl:choose>
                                    </td>
                                </xsl:for-each>  
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>    
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>