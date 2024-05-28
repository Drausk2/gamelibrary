<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:param name="gameName"/>

  <xsl:template match="/LIBARY">
    <html>
      <head>
        <title>Spiel Details</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <a href="./game-library.xml"> <button class="back-button">🡐 Zurück</button></a>
        <xsl:apply-templates select="GAME[NAME=$gameName]"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="GAME">
    <div class="game-details">
      <h1><xsl:value-of select="NAME"/></h1>
      <img src="./img/{IMAGE}" alt="{NAME}"/>
      <p><strong class="cat-text">Publisher: </strong> <xsl:value-of select="PUPLISHER"/></p>
      <p><strong class="cat-text">Developer: </strong> <xsl:value-of select="DEVELOPER"/></p>
      <p><strong class="cat-text">Genre: </strong> <xsl:value-of select="GENRE"/></p>
      <p><strong class="cat-text">Release Date: </strong> <xsl:value-of select="RELEASEDATE"/></p>
      <p><strong class="cat-text">Rating Recently: </strong> <xsl:value-of select="RATING-RECENTLY"/></p>
      <p><strong class="cat-text">Rating Alltime: </strong> <xsl:value-of select="RATING-ALLTIME"/></p>
      <p><strong class="cat-text">Age: </strong> <xsl:value-of select="AGE"/></p>
      <p><strong class="cat-text">Description: </strong> <xsl:value-of select="DESCRIPTION"/></p>
      <p><strong class="cat-text">Price: </strong> <xsl:value-of select="PRICE"/></p>
      <p><strong class="cat-text">OS: </strong> <xsl:value-of select="OS"/></p>
      <p><strong class="cat-text">CPU: </strong> <xsl:value-of select="CPU"/></p>
      <p><strong class="cat-text">RAM: </strong> <xsl:value-of select="RAM"/></p>
      <p><strong class="cat-text">GPU: </strong> <xsl:value-of select="GPU"/></p>
      <p><strong class="cat-text">Storage: </strong> <xsl:value-of select="STORAGE"/></p>
      <p><strong class="cat-text">Extra: </strong> <xsl:value-of select="EXTRA"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>

<!-- https://codepen.io/tahazsh/pen/gOqNZyw -->