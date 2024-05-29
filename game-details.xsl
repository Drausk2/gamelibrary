<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:param name="gameName"/>

  <xsl:template match="/LIBRARY">
    <html>
      <head>
        <title>Spiel Details</title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        
        <xsl:apply-templates select="GAME[NAME=$gameName]"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="GAME">
    <div class="game-details">
      <div class="top-wrapper">
      <div>

        <!-- IMAGE GALLERY -->

      </div>
      <div>
      <img class="gameimg" src="./img/{IMAGE}" alt="{NAME}"/>
      <a href="./game-library.xml"> <button class="back-button">🡐 Zurück</button></a>

      <h1 class="gamename"><xsl:value-of select="NAME"/></h1>
      <p class="gamedisc"><xsl:value-of select="DESCRIPTION"/></p>
      <hr class="gamehr"></hr>

        <div class="genre-wrapper">
          <p><strong class="gen-text">Genre:</strong>
            <xsl:for-each select="GENRE">
              <span class="genre-item">
                <xsl:value-of select="."/>
              </span>
            </xsl:for-each>
          </p>
        </div>
      </div>
    </div>



        <div class="detail-box-wrapper">
        <div class="detail-box-1-wrapper">
          <div><p class="cat-text"><strong>Publisher</strong></p> <p><xsl:value-of select="PUPLISHER"/></p></div>
          <hr class="detail-box-1-hr"></hr>
          <div><p class="cat-text"><strong>Developer</strong></p> <p><xsl:value-of select="DEVELOPER"/></p></div>
          <hr class="detail-box-1-hr"></hr>
          <div><p class="cat-text"><strong>Release Date</strong></p> <p><xsl:value-of select="RELEASEDATE"/></p></div>
          <hr class="detail-box-1-hr"></hr>
          <div><p  class="cat-text"><strong>Age</strong></p> <p><xsl:value-of select="AGE"/></p></div>
          <hr class="detail-box-1-hr"></hr>
          <div><p  class="cat-text"><strong>Price</strong></p> <p><xsl:value-of select="PRICE"/></p></div>
          <hr class="detail-box-1-hr"></hr>
          <div><p  class="cat-text"><strong>Rating <mini>(Recently)</mini></strong></p> <p><xsl:value-of select="RATING-RECENTLY"/></p></div>
          <hr class="detail-box-1-hr"></hr>
          <div><p  class="cat-text"><strong>Rating <mini>(Alltime)</mini></strong></p> <p><xsl:value-of select="RATING-ALLTIME"/></p></div>
        </div>

        <div class="detail-box-2-wrapper">
          <div><p class="cat-text-2"><strong>Price</strong></p> <p><xsl:value-of select="PRICE"/></p></div>
          <hr class="detail-box-2-hr"></hr>
          <div><p class="cat-text-2"><strong>OS</strong></p> <p><xsl:value-of select="OS"/></p></div>
          <hr class="detail-box-2-hr"></hr>
          <div><p class="cat-text-2"><strong>CPU</strong></p> <p><xsl:value-of select="CPU"/></p></div>
          <hr class="detail-box-2-hr"></hr>
          <div><p  class="cat-text-2"><strong>RAM</strong></p> <p><xsl:value-of select="RAM"/></p></div>
          <hr class="detail-box-2-hr"></hr>
          <div><p  class="cat-text-2"><strong>GPU</strong></p> <p><xsl:value-of select="GPU"/></p></div>
          <hr class="detail-box-2-hr"></hr>
          <div><p  class="cat-text-2"><strong>Storage</strong></p> <p><xsl:value-of select="STORAGE"/></p></div>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>

<!-- https://www.figma.com/design/rmetZS0BVKwZQ1uuOdBauZ/Untitled?node-id=0-1&t=RtSa4y05dA1vlT9p-1 -->