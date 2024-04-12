<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">

    <html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<title>AEMET Salamanca</title>
				<link rel="stylesheet" href="css/style.css" type="text/css" />
			</head>
    <body>
    <h2>Alumnos Matriculados 2020-2021</h2>

                         <table>
                            <tr>
                                <th> Alumno </th>
                                <th> Nombre </th>
                                <th> Apellidos </th>
                                <th> Matematica</th>
                                <th>Lengua Castellana</th>
                                <th>Inglés</th>
                            </tr>

                            <xsl:for-each select="alumnos/alumno">

                            <tr>    

                                
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="apellidos"/></td>
                                <td><xsl:value-of select="asignaturas/nota"/></td>
                                <td><xsl:value-of select="asignaturas/nota"/></td>
                                <td><xsl:value-of select="asignaturas/nota"/></td>

                            </tr>
                            </xsl:for-each>
                            </table>    
                            
    </body>
</html>
</xsl:template>
</xsl:stylesheet>