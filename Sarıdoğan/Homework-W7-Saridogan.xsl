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
                <xsl:if test="language = 'English' ">
                <xsl:value-of select="author/lastName"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="author/firstName"/>
                <xsl:text>. </xsl:text>
                <i><xsl:value-of select="fullTitle"/></i>
                <xsl:text>. </xsl:text>
                <xsl:value-of select="imprint/place"/>
                <xsl:text>: </xsl:text>
                <xsl:value-of select="imprint/publisher"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="imprint/date"/>
                <xsl:text>. </xsl:text>
                <br/>
                </xsl:if>
            </xsl:for-each>
        </p>

        <h2>Titles written after 2000</h2>
        <p>
            <xsl:for-each select="item">
                <xsl:sort select="author/lastName" order="ascending"/>
                <xsl:if test="imprint/date &gt; 2000">
                <xsl:value-of select="author/lastName"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="author/firstName"/>
                <xsl:text>. </xsl:text>
                <i><xsl:value-of select="fullTitle"/></i>
                <xsl:text>. </xsl:text>
                <xsl:value-of select="imprint/place"/>
                <xsl:text>: </xsl:text>
                <xsl:value-of select="imprint/publisher"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="imprint/date"/>
                <xsl:text>. </xsl:text>
                <br/>
                </xsl:if>
            </xsl:for-each>   
        </p>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>
