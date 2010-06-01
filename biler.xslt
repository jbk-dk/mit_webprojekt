<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Biler</title>
            </head>
            <body>
                <h1>Biler</h1>
                <table>
                    <tr>
	                  <th>Maerke</th>
                        <th>Model</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="bil">
        <tr>
            <td><xsl:value-of select="make"/></td>
            <td><xsl:value-of select="model"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>
