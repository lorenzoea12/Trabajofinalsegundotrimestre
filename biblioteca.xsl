<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
	<html><head><link rel="stylesheet" type="text/css" href="biblioteca.css" /></head><body>  <h1>ES DEMASIADO ESTRECHO</h1> <div id="voltearimagen">
      <xsl:apply-templates />
     
   </div> </body></html>
  </xsl:template>
  
  
  <xsl:template match="libro">
    <div id="girarimagen">
  <img>
        <xsl:attribute name="src">

        <xsl:value-of select="foto"/>
      </xsl:attribute>
      </img>

    <h2><xsl:value-of select="titulo"/></h2>
    
    
    <p> Fecha de salida: <xsl:value-of select="fechaPublicacion/@año"/></p>

      


     <p><xsl:value-of select="autor"/>, <xsl:value-of select="sexo"/></p>

     
     
    </div>
  </xsl:template>

</xsl:stylesheet>