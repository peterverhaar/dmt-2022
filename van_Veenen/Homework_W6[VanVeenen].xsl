
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> <xsl:template match="collection"> <html>
        
        <head></head>
        <body>
            <h2 align="center">
                <xsl:value-of select="head/title"/>
            </h2>
            
            <p>
                <xsl:text>From </xsl:text>
                <xsl:value-of select="body/letter/author" />
                <xsl:text> to </xsl:text>
                <xsl:value-of select="body/letter/recipient" /><br/>
                <xsl:value-of select="body/letter/place"/><br/>
                <i>
                    <xsl:value-of select="body/letter/callnumber"/>
                </i>
            </p>
            
        </body>
    </html>
    </xsl:template>
        
</xsl:stylesheet>