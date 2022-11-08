<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliography">
        <html>
            <header>
                <title>
                    Bibliography
                </title>
            </header>
            <body>
                
                <h2>English titles</h2>
                
                <p>
                    <xsl:for-each select="item">
                        <xsl:sort select="fullTitle"/>
                        <xsl:if test="eng">
                            <xsl:value-of select="fullTitle"/>  <br/>
                        </xsl:if>
                    </xsl:for-each>
                </p>
                
                <h2>Titles written after 2000. s</h2>
                
                <p>
                    <xsl:for-each select="item">
                        <xsl:sort select="fullTitle"/>
                        <xsl:if test="year &gt; 2000">
                            <xsl:value-of select="fullTitle"/>  <br/>
                        </xsl:if>
                    </xsl:for-each>
                </p>
                
            </body>
        </html>
      
    </xsl:template>


</xsl:stylesheet>
