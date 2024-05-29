<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/LIBRARY">
    <html>
      <head>
        <title>Spieledatenbank</title>
        <link rel="stylesheet" type="text/css" href="pre-style.css"/>
      </head>
      <body>
        <img class="logo" src="./img/gamelib.png"/>
        <h1 class="title">Wähle ein Spiel</h1>
        <div class="container">
          <xsl:apply-templates select="GAME"/>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="GAME">
    <a class="box" href="game-details.html?name={NAME}">
      <span class="box__image" style="--bg-image: url(./img/{COVER})">
        <img src="./img/{COVER}" alt="{NAME}"/>
      </span>
      <span class="box__title"><xsl:value-of select="NAME"/></span>
    </a>
  </xsl:template>
</xsl:stylesheet>
