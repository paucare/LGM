<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Catalogo</title>
                <link rel="stylesheet" href="hoja.css" type="text/css"/>
            </head>
            <body>
                <h1>Feed de suscriptor</h1>
                
                <div> 
                <xsl:for-each select="rss/channel/item">
                    <h2><xsl:value-of select="title"/></h2>
                    <ul>
                    <li>
                    <a href="url"><xsl:value-of select="link"/></a>
                    </li>
                    <li>
                    <xsl:value-of select="description"/>
                    </li>
                    </ul>
                    </xsl:for-each>
                </div>

                <img src="zapatos.jpg" alt="zapatos" width="300" height="300"/>
                
            </body>
        </html>
         </xsl:template>
</xsl:stylesheet>