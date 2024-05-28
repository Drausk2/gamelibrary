<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:param name="gameName"/>

  <xsl:template match="/LIBARY">
    <html>
      <head>
        <title>Spiel Details</title>
        <link rel="stylesheet" type="text/css" href="detail-style.css"/>
      </head>
      <body>
        <a href="./game-library.xml">Zurück</a>
        <xsl:apply-templates select="GAME[NAME=$gameName]"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="GAME">
    <div class="game-details">
      <h1><xsl:value-of select="NAME"/></h1>
      <img src="./img/{IMAGE}" alt="{NAME}"/>
      <p><strong>Publisher:</strong> <xsl:value-of select="PUPLISHER"/></p>
      <p><strong>Developer:</strong> <xsl:value-of select="DEVELOPER"/></p>
      <p><strong>Genre:</strong> <xsl:value-of select="GENRE"/></p>
      <p><strong>Release Date:</strong> <xsl:value-of select="RELEASEDATE"/></p>
      <p><strong>Rating Recently:</strong> <xsl:value-of select="RATING-RECENTLY"/></p>
      <p><strong>Rating Alltime:</strong> <xsl:value-of select="RATING-ALLTIME"/></p>
      <p><strong>Age:</strong> <xsl:value-of select="AGE"/></p>
      <p><strong>Description:</strong> <xsl:value-of select="DESCRIPTION"/></p>
      <p><strong>Price:</strong> <xsl:value-of select="PRICE"/></p>
      <p><strong>OS:</strong> <xsl:value-of select="OS"/></p>
      <p><strong>CPU:</strong> <xsl:value-of select="CPU"/></p>
      <p><strong>RAM:</strong> <xsl:value-of select="RAM"/></p>
      <p><strong>GPU:</strong> <xsl:value-of select="GPU"/></p>
      <p><strong>Storage:</strong> <xsl:value-of select="STORAGE"/></p>
      <p><strong>Extra:</strong> <xsl:value-of select="EXTRA"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>
