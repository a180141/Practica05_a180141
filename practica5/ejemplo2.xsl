<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
   <html>
    <head>
      <style type="text/css">
        table {     
          font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
          font-size: 12px;    
          margin: 45px;     
          width: 480px; 
          text-align: left;    
          border-collapse: collapse; 
          }

        th {     
          font-size: 13px;     
          font-weight: normal;     
          padding: 8px;     
          background: #b9c9fe;
          border-top: 4px solid #aabcfe;    
          border-bottom: 1px solid #fff; color: #039; 
          }
        td {    
        padding: 8px;     
        background: #e8edff;     
        border-bottom: 1px solid #fff;
        color: #669;    
        border-top: 1px solid transparent; 
        }
        tr:hover td { background: #d0dafd; color: #339; 
        }
      </style>
    </head>
    <body>
      <h1>Celulares Populares</h1>
      <table style="width:90%">
        <tr><th>Marca</th><th>Modelo</th></tr>
        <xsl:for-each select="celulares/celular">
      <tr>
        <td><xsl:value-of select="marca"/></td>
        <td><xsl:value-of select="modelo"/></td>
      </tr>
      </xsl:for-each>
      </table>
    </body>
  </html>
  </xsl:template>
</xsl:stylesheet>
