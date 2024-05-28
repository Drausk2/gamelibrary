<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>



  <xsl:template match="/LIBARY">
    <html>
      <head>
        <title>Spieledatenbank</title>
        <link rel="stylesheet" type="text/css" href="pre-style.css"/>
      </head>

      <body>
        <h1 class="title">Wähle ein Spiel</h1>
        <div class="container">
        <xsl:apply-templates select="GAME"/>
      </div>
      </body>
    </html>
  </xsl:template>




  <xsl:template match="DESCRIPTION">
    <div class="description">
      <p><xsl:value-of select="text()"/></p>
      </div>
      </xsl:template>




  <xsl:template match="GAME">
    <!-- <div class="game-wrapper">
    <div class="game">
      <img src="./img/{IMAGE}" alt="Bild"/>
      <h2><xsl:value-of select="NAME"/></h2>
    </div>
  </div> -->


      
        <a class="box" href="#">
          <span class="box__image">
            <img src="./img/{IMAGE}"></img> alt=""/>
          </span>
          <span class="box__title"><xsl:value-of select="NAME"/></span>
        </a>


  </xsl:template>
</xsl:stylesheet>