<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Catalogo</title>
                <link rel="stylesheet" href="css/style.css" type="text/css"/>
            </head>
            <body>
                <h1>Catalogo</h1>

                 <!--Seleccionar todos los productos de la categoría electronica--> 
                <xsl:for-each select="//producto[@categoria='Electrónica']">
                <p> 
                    <xsl:value-of select="."/>
                </p>
                </xsl:for-each>
                
                
                
            </body>
        </html>
         </xsl:template>
</xsl:stylesheet>