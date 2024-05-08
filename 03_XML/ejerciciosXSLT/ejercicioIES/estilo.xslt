<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>IES</title>
                <link rel="stylesheet" href="style.css" type="text/css"/>
            </head>
            <body>
            
                <h2>Datos del IES</h2>
                <p><strong>Nombre: </strong><xsl:value-of select="institutos/ies/nombre"/></p>
                <p><strong>Ubicación: </strong><xsl:value-of select="institutos/ies/ubicacion"/></p>

                <h2>Profesores</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Asignaturas</th>
                    </tr>
                    
                    <xsl:for-each select="institutos/ies/profesores/profesor">
                    <tr>
                        <td><xsl:value-of select= "nombre"/></td>
                        <td><xsl:value-of select= "apellidos"/></td>

                        
                        
                        <td>
                        
                            <ul>
                                <xsl:for-each select="asignaturas/asignatura">
                                <li><strong><xsl:value-of select="@nombre"/></strong><xsl:value-of select= "horas"/></li>
                                </xsl:for-each>
                               
                            </ul>
                            
                        </td>
                        
                            
                    </tr>
                     </xsl:for-each>
                </table>

                <h2>Alumnos</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Edad</th>
                    </tr>
                    <xsl:for-each select="institutos/ies/alumnos/alumno">
                    <tr>
                        <td><xsl:value-of select= "nombre"/></td>
                        <td><xsl:value-of select= "apellidos"/></td>
                        <td><xsl:value-of select= "edad"/></td>
                            
                    </tr>
                     </xsl:for-each>
                   
                </table>

            </body>
            </html>
        </xsl:template>
</xsl:stylesheet>