<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="us-ascii"/>

<xsl:template match="/">

  <xsl:apply-templates select="//p[@class='references']"/>

</xsl:template>

<xsl:template match="//p[@class='references']">
<xsl:text>
</xsl:text>
 <p><xsl:apply-templates select="text() | span"/></p>
</xsl:template>

<xsl:template match="text()">
 <xsl:value-of select="."/>
</xsl:template>

<xsl:include href="make_styles.xsl" />

</xsl:stylesheet>


