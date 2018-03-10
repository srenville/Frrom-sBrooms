<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : pricesBySup.xsl
    Created on : March 9, 2018, 11:38 PM
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
                <title>pricesBySup.xsl</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

            </head>
            <body>
            


<!--        <html>
            <head>
                <title>suppliers.xsl</title>
            </head>
            <body>-->
                <div class="container">
                 <h3> Price List by Suppliers</h3>
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
                          <xsl:sort order="ascending" select="suppliers/supplier"/>
<!--                            <tr>
                                <td>
                                    <xsl:variable name="imagefromxml" select="image"/>
                                    <img src="{$imagefromxml}"></img>
                                </td>
                            </tr>-->
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
                    </xsl:for-each>
                </tbody>
                 </table>
                </div>
<!--            </body>
        </html>-->
   

<!--http://stackoverflow.com/questions/666584/how-do-i-generate-a-comma-separated-list-with-xslt-xpath-->

<!--http://www.java2s.com/Tutorial/XML/0100__XSLT-stylesheet/iftestpositionlast.htm-->
                
                
                
                
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
