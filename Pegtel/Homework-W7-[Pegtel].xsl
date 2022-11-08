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
                        <xsl:sort select="author/lastName" order="ascending"/>
                        <xsl:if test="language = 'English'">
                        <li>
                            <xsl:value-of select="author/lastName"/> <xsl:value-of select="author/firsName"/>
                            <i><xsl:value-of select="fullTitle/nonFiling"/>
                            <xsl:value-of select="fullTitle/title"/>.</i>
                            <xsl:value-of select="imprint/place"/>: <xsl:value-of select="imprint/publisher"/>, <xsl:value-of select="imprint/date"/>
                    </li>
                 </xsl:if>
              </xsl:for-each>                 
            </p>
                
                <h2>Titles written after 2000.</h2>
                
                <p>
                   <xsl:for-each select="item">
                        <xsl:sort select="author/lastName" order="ascending"/>
                        <xsl:if test="imprint/Date &gt; 2000">
                            <li>
                                <xsl:value-of select="author/lastName"/> <xsl:value-of select="author/firsName"/>
                                <i><xsl:value-of select="fullTitle/nonFiling"/>
                                    <xsl:value-of select="fullTitle/title"/>.</i>
                                <xsl:value-of select="imprint/place"/>: <xsl:value-of select="imprint/publisher"/>, <xsl:value-of select="imprint/date"/>
                            </li>
                        </xsl:if>
                    </xsl:for-each>  
                </p>
                
            </body>
        </html>
      
    </xsl:template>


</xsl:stylesheet>
