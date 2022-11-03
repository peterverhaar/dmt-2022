<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="bibliography">
        <html>
            <header>
                <title> Bibliography </title>
            </header>
            <body>

                <h2>English titles</h2>

                <p>
                    <ul><xsl:for-each select="item">
                        <xsl:if test="language[@languageCode='eng']">
                            <li><xsl:value-of select="fullTitle/nonFiling"/>
                            <xsl:value-of select="fullTitle/title"/>
                            </li>
                            <lb/>
                        </xsl:if>
                        
                    </xsl:for-each>
                    </ul>

                </p>

                <h2>Titles written after 2000. s</h2>

                <p>
                   <ul> <xsl:for-each select="item">
                        <xsl:if test="imprint/date &gt; 2000">
                           <li> <xsl:value-of select="fullTitle/nonFiling"/>
                            <xsl:value-of select="fullTitle/title"/>
                            <lb/>
                           </li>
                        </xsl:if>
                    </xsl:for-each>
                   </ul>
                </p>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
