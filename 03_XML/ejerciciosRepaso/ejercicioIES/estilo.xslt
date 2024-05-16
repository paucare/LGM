<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">

    <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Alumnos</title>
                <link rel="stylesheet" href="style.css" type="text/css"/>
            </head>
            <body>
            
            <h1>Datos del ies</h1>

            <p><strong>Nombre:</strong><xsl:value-of select="ies/instituto/nombre"/></p>
            <p><strong>Ubicacion:</strong><xsl:value-of select="ies/instituto/ubicacion"/></p>
            <h2>Profesores</h2>

            <table>
                <tr>
                <td>Nombre</td>
                <td>Apellidos</td>
                <td>Asignaturas</td>
                </tr>

                <xsl:for-each select="ies/instituto/profesores/profesor">
                    <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="apellidos"/></td>
                    <td><ul>
                        <xsl:for-each select="asignaturas/asignatura">
                            <li><strong><xsl:value-of select="nombre"/></strong> : <xsl:value-of select="horas"/> horas/semana </li>
                        </xsl:for-each>
                    </ul></td>
                    </tr>
                </xsl:for-each>
            </table>

            <h2>Alumnos</h2>

            <table>
                <tr>
                    <td>Nombre</td>
                    <td>Apellidos</td>
                    <td>Edad</td>
                </tr>
                <xsl:for-each select="ies/instituto/alumnos/alumno">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="apellidos"/></td>
                    <td><xsl:value-of select="edad"/></td>
                </tr>
                </xsl:for-each>
            </table>
            </body>
    </html>


    </xsl:template>
    </xsl:stylesheet>