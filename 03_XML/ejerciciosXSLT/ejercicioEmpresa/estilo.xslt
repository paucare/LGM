<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Empresa</title>
                <link rel="stylesheet" href="style.css" type="text/css"/>
            </head>
            <body>
            
                <h2>Datos de la empresa</h2>
                <p><strong>Nombre: </strong><xsl:value-of select="empresas/empresa/nombre"/></p>
                <p><strong>Ubicación: </strong><xsl:value-of select="empresas/empresa/ubicacion"/></p>
                <p><strong>Número de empleados: </strong><xsl:value-of select="empresas/empresa/numero_de_empleados"/></p>

                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Fecha de Inicio</th>
                        <th>Responsable</th>
                        <th>Presupuesto</th>
                        <th>Finalizado</th>
                        <th>Subvención</th>
                    </tr>
                    
                    <xsl:for-each select="empresas/empresa/proyectos/proyecto">
                    <tr>
                        <td><xsl:value-of select= "@nombre"/></td>
                        <td><xsl:value-of select="fecha_de_inicio"/></td>
                        <td><xsl:value-of select="responsable"/></td>
                        <td><xsl:value-of select="presupuesto"/></td>
                        <td><xsl:value-of select="finalizado"/></td>
                        <td>
                        <xsl:choose>
                            <xsl:when test="subvencion">
                                <xsl:value-of select="subvencion"/>
                            </xsl:when>
                            <xsl:otherwise>
                                No
                            </xsl:otherwise>
                         </xsl:choose>
                        </td>
                        <!-- <td>
                            <xsl:if test="subvencion"> 
                                <xsl:value-of select="subvencion"/>
                            </xsl:if>
                            <xsl:if test="not(subvencion)">
                                No
                            </xsl:if>
                        </td> -->
                    </tr>

                    </xsl:for-each>

                </table>

            </body>
            </html>
        </xsl:template>
</xsl:stylesheet>