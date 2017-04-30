<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<xsl:template match="/">
  <html>
  <body>
  <h2>Renting movies system</h2>
  <h3>All entries choosed by random from database. Customers, who didn't bring back movie by the time are marked with red color.</h3>
    <table border="1">
      <tr bgcolor="#F5F5F5">
        <th>First name</th>
        <th>Surname</th>
        <th>Movie</th>
        <th>Date of return </th>
        <th>Past due</th>
      </tr>
      <xsl:for-each select="database/customer">
        <xsl:sort select="firstName" />
      <tr>
        <td><xsl:value-of select="surName"/></td>
        <td><xsl:value-of select="firstName"/></td>
        <td><xsl:value-of select="movies/movie"/></td>
        <xsl:choose>
            <xsl:when test="pastDue='Yes'">
                <td style="background-color:#ff0000">
                    <xsl:value-of select="pastDue" />
                </td>
            </xsl:when>
            <xsl:otherwise>
                <td style="background-color:#00FF00">
                    <xsl:value-of select="pastDue" />
                </td>
            </xsl:otherwise>
        </xsl:choose>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>