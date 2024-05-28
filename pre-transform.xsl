<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>



  <!-- Template für das Wurzelelement -->
  <xsl:template match="/LIBARY">
    <html>
      <head>
        <title>Spieledatenbank</title>
        <link rel="stylesheet" type="text/css" href="pre-style.css"/>
      </head>

      <body>
        <h1>temp</h1>
		<!-- <p>In dieser Datenbank geht es darum, verschiedene in eine Datenbank einzupflegen, und diese dann später aufzurufen.
		Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p> -->
    <!-- <xsl:apply-templates select="GAME/DESCRIPTION"/> -->
        <!-- Anwendung des Templates für jeden Film -->
        <xsl:apply-templates select="GAME"/>
      </body>
    </html>
  </xsl:template>




  <!-- Template für die Darstellung der Beschreibung -->
  <xsl:template match="DESCRIPTION">
    <div class="description">
      <p><xsl:value-of select="text()"/></p>
      </div>
      </xsl:template>




  <!-- Template für die Darstellung eines Films -->
  <xsl:template match="GAME">
    <div class="game-wrapper">
    <div class="game">
      <img src="./img/{IMAGE}" alt="Bild"/>
      <h2><xsl:value-of select="NAME"/></h2>
    </div>
  </div>

  </xsl:template>
</xsl:stylesheet>