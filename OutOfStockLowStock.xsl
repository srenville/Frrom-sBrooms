<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : OutOfStockLowStock.xsl
    Created on : March 10, 2018, 12:28 AM
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
                <title>OutOfStockLowStock.xsl</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
            </head>
            <body>

                <div class="container">
                 <h3> Low Stocked Supplies</h3>
                 <table  class="table" style="padding: 10px">
                    <thead>
                     <tr bgcolor="#09a8fa">
                      <th>Suppliers</th>
                      <th>Product Code</th>
                      <th>Name</th>
                      <th>Price</th>
                      <th>Image</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                    <xsl:for-each select="Products/Product">
                        <xsl:sort order="ascending" select="code"/>
                        <xsl:if test="qis &lt; reorderLevel" >
                          

                            <tr>
                                <td>
                                       <xsl:for-each select="suppliers/supplier">
                                            <xsl:value-of select="."/> |   
                                       </xsl:for-each>
                                       
                                </td>
                                <td>
                                   <xsl:value-of  select="code"/>
                                </td>
                                
                                <td>
                                   <xsl:value-of  select="name"/>
                                </td>
                                
                                <td>
                                   <xsl:value-of  select="price"/>
                                </td>
                                
                                <td>
                                <img width="100" height="100" src="{image}"/>
                                </td>
                                
                                
                                
                                
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </tbody>
                 </table>
                </div>
                
                
                
                  <div class="container">
                 <h3> Supplies Out of Stock</h3>
                 <table  class="table" style="padding: 10px">
                    <thead>
                     <tr bgcolor="#09a8fa">
                      <th>Suppliers</th>
                      <th>Product Code</th>
                      <th>Name</th>
                      <th>Price</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                    <xsl:for-each select="Products/Product">
                        <xsl:sort order="ascending" select="code"/>
                        <xsl:if test="qis &lt; 1" >
                          

                            <tr>
                                <td>
                                       <xsl:for-each select="suppliers/supplier">
                                            <xsl:value-of select="."/> |   
                                       </xsl:for-each>
                                       
                                </td>
                                <td>
                                   <xsl:value-of  select="code"/>
                                </td>
                                
                                <td>
                                   <xsl:value-of  select="name"/>
                                </td>
                                
                                <td>
                                   <xsl:value-of  select="price"/>
                                </td>
                                
                                
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </tbody>
                 </table>
                </div>
       
                
                
      
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
