<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="collection">
        
        <html>
            <head></head>
            <body>
                <h2>
                    <xsl:value-of select="head"/>
                </h2>
               <p>
                   <b>From <xsl:value-of select="body/letter/author"/> to <xsl:value-of select="body/letter/recipient"/></b>
                   <br><xsl:value-of select="body/letter/place"/></br>
                   <br><xsl:value-of select="body/letter/year"/></br>
                   <br><i><xsl:value-of select="body/letter/callnumber"/></i></br>
               </p> 
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
