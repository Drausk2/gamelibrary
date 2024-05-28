<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>



  <!-- Template für das Wurzelelement -->
  <xsl:template match="/LIBARY">
    <html>
      <head>
        <title>Spieledatenbank</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>

      <body>
        <h1>temp</h1>
		<p>In dieser Datenbank geht es darum, verschiedene in eine Datenbank einzupflegen, und diese dann später aufzurufen.
		Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.</p>
    <xsl:apply-templates select="GAME/DESCRIPTION"/>
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
    <div class="game">
      <h2><xsl:value-of select="NAME"/></h2>
      <img src="./img/{IMAGE}" alt="Bild"/>
      <p><strong>Publisher: </strong> <xsl:value-of select="PUPLISHER"/></p>
      <p><strong>Entwickler: </strong> <xsl:value-of select="DEVELOPER"/></p>
      <p><strong>Genre: </strong> <xsl:value-of select="GENRE"/></p>
      <p><strong>Veröffentlichung: </strong> <xsl:value-of select="RELEASEDATE"/></p>
      <p><strong>Kürzliche Rezensionen: </strong> <xsl:value-of select="RATING-RECENTLY"/></p>
      <p><strong>Alle Rezensionen: </strong> <xsl:value-of select="RATING-ALLTIME"/></p>
      <p><strong>Alter: </strong> <xsl:value-of select="AGE"/></p>
      <!-- <p><strong>Beschreibung: </strong> <xsl:value-of select="DESCRIPTION"/></p> -->
      <p><strong>Preis: </strong> <xsl:value-of select="PRICE"/></p>
      <p><strong>Betriebssystem: </strong> <xsl:value-of select="OS"/></p>
      <p><strong>Prozessor: </strong> <xsl:value-of select="CPU"/></p>
      <p><strong>Arbeitsspeicher: </strong> <xsl:value-of select="RAM"/></p>
      <p><strong>Grafik: </strong> <xsl:value-of select="GPU"/></p>
      <p><strong>Speicherplatz: </strong> <xsl:value-of select="STORAGE"/></p>
      <p><strong>Extra: </strong> <xsl:value-of select="EXTRA"/></p>

      
      
      <!-- <p><strong>Besetzung:</strong><br/>
        <xsl:apply-templates select="besetzung"/>
      </p> -->


    </div>
  </xsl:template>
  <!-- Template für die Darstellung der Besetzung -->
  <!-- <xsl:template match="besetzung">
    <xsl:value-of select="."/><br/>
  </xsl:template> -->
</xsl:stylesheet>