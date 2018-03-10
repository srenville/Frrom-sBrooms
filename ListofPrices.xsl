<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : ListofPrices.xsl
    Created on : March 9, 2018, 3:23 PM
    Author     : Toozigba
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>ListofPrices.xsl</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous"/>

            </head>
            <body>
                  <xsl:template match="/">
<!--        <html>
            <head>
                <title>pricelist.xsl</title>
            </head>
            <body>-->
                 
                 <div class="container">
                     <h3>Price List</h3>
                      <table  class="table" style="padding: 10px">
                     <thead>
                        <tr bgcolor="09a8fa">
                            <th>Product Code</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Description</th>
                            
                            
                        </tr>
                         
                     </thead> 
                     <tbody>
                       <xsl:for-each select="Products/Product">
                        <xsl:sort order="ascending" select="code"/>
                        <tr>
                            <td>
                                <xsl:value-of  select="code"/>
                            </td>
                             <td >
                                <xsl:if test="name">
                                    <span><xsl:value-of  select="name"/></span>
                                </xsl:if>
                            </td>
                            <td>
                                <xsl:value-of  select="price"/>
                            </td>
                          
                            <td>Description</td>
                           
                           
                            
                        </tr>
                        </xsl:for-each>
   
                     </tbody>
                   
                 </table>
                 </div>
<!--            </body>
        </html>-->
    </xsl:template>
                
                
                
                
                
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
