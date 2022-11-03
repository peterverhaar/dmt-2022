<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliography">

        <html>
            <header>
                <title> Bibliography </title>
            </header>
            <body>

                <p>
                                  
                     <xsl:for-each select="item">
                         
                     <xsl:value-of select="fullTitle"></xsl:value-of>
                         <br/>
                     </xsl:for-each>
                </p>

            </body>

        </html>


    </xsl:template>


</xsl:stylesheet>
