<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliogrpahy">

        <html>
            <header>
                <title>
                    Bibliography
                </title>
            </header>
            <body>
                
                <h2>English titles</h2>
                
                <p>
                    <br/><xsl:for-each select="item/language/@eng">
                        <xsl:sort select="item/author/lastName"/>
                        
                        <xsl:value-of select="author/lastName/firstName"/><xsl:text>,</xsl:text>
                        <i/><xsl:value-of select="fulltitle"/><xsl:text>.</xsl:text>
                        <xsl:value-of select="place"/><xsl:text>:</xsl:text>
                        <xsl:value-of select="publisher"/><xsl:text>,</xsl:text>
                        <xsl:value-of select="year"/><xsl:text>.</xsl:text>
                        
                    </xsl:for-each>
                    
                </p>
                
                <h2>Titles written after 2000. s</h2>
                
                <p>
                    <br/><xsl:for-each select="item/date &gt; 2000">
                        <xsl:sort select="item/author/lastName"/>
                        
                        <xsl:value-of select="author/lastName/firstName"/><xsl:text>,</xsl:text>
                        <i/><xsl:value-of select="fulltitle"/><xsl:text>.</xsl:text>
                        <xsl:value-of select="place"/><xsl:text>:</xsl:text>
                        <xsl:value-of select="publisher"/><xsl:text>,</xsl:text>
                        <xsl:value-of select="year"/><xsl:text>.</xsl:text>
                        
                    </xsl:for-each>
                </p>
                
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>
