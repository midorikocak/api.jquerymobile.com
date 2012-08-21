<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="entries2html-base.xsl"/>

<xsl:template name="example-code">
&lt;!doctype html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
	&lt;meta charset="utf-8"&gt;
	&lt;meta name="viewport" content="width=device-width, initial-scale=1"&gt;
	&lt;title&gt;<xsl:value-of select="//entry/@name"/> demo&lt;/title&gt;
	&lt;link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.css"&gt;<xsl:if test="css">
	&lt;style&gt;<xsl:value-of select="css/text()"/>	&lt;/style&gt;</xsl:if>
	&lt;script src="http://code.jquery.com/jquery-1.7.2.min.js"&gt;&lt;/script&gt;
	&lt;script src="http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.min.js"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;div data-role="page"&gt;
	&lt;div data-role="header"&gt;
		&lt;h1&gt;jQuery Mobile Example&lt;/h1&gt;
	&lt;/div&gt;
	&lt;div data-role="content"&gt;<xsl:value-of select="html/text()"/>
	&lt;/div&gt;
&lt;/div&gt;<xsl:if test="code">
&lt;script&gt;<xsl:value-of select="code/text()"/>&lt;/script&gt;</xsl:if>

&lt;/body&gt;
&lt;/html&gt;
</xsl:template>

</xsl:stylesheet>
