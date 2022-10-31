<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="collection">
        <html>
            <head/>
            <body>
                <h2 align="center">
                    <xsl:value-of select="head"/>
                </h2>

                <p>
                    <b>
                    <xsl:text>From </xsl:text>
                    <xsl:value-of select="body/letter/author"/>
                    <xsl:text> to </xsl:text>
                    <xsl:value-of select="body/letter/recipient"/>
                    </b>
                        <br/>
                    <xsl:value-of select="body/letter/place"/>
                    <br/>
                    <xsl:value-of select="body/letter/year"/>
                    <br/>
                    <i>
                        <xsl:value-of select="body/letter/callnumber"/>
                    </i>
                </p>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
