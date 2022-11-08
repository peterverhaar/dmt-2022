<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="bibliography">
        <html>
            <header>
                <title> Bibliography </title>
            </header>
            <body>

                <h2>English titles</h2>

                <p>
                    <xsl:if test="language/@languageCode ='eng'">
                    <xsl:for-each select="item">
                        <xsl:sort select="author/lastName" data-type="text"/>
                        <xsl:value-of select="author/lastName"/>, <xsl:value-of
                            select="author/firstName"/>
                        
                        <i><xsl:value-of select="fullTitle"/></i>
                        <xsl:value-of select="imprint/place"/> : <xsl:value-of
                            select="imprint/publisher"/> , <xsl:value-of select="imprint/date"/>
                        <br/>
                    </xsl:for-each>
                    </xsl:if>
                </p>

                <h2>Titles written after 2000. s</h2>

                <p>
                    <xsl:if test="date &gt; 2000">
                        <xsl:for-each select="item">
                            <xsl:sort select="author/lastName" data-type="text"/>
                            <xsl:value-of select="author/lastName"/>, <xsl:value-of
                                select="author/firstName"/>
                            <i><xsl:value-of select="fullTitle"/></i>
                            <xsl:value-of select="imprint/place"/> : <xsl:value-of
                                select="imprint/publisher"/> , <xsl:value-of select="imprint/date"/>
                            <br/>
                        </xsl:for-each>
                    </xsl:if>
                </p>

            </body>
        </html>


    </xsl:template>

</xsl:stylesheet>
