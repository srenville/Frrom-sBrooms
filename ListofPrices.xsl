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
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            </head>
            <body>
              

                
                
                  <xsl:template match="/">

                 <div class="container">
                     
                     
                     
                       
                     <h3>Price List</h3>
                      <table  class="table" style="padding: 10px">
                     <thead>
                        <tr bgcolor="09a8fa">
                            <th>Product Code</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Discount</th>
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
                            
                            <td style="color:red;">
                                <xsl:value-of  select="discount"/>
                            </td>
                          
                            <td>
                                <xsl:variable name="name" select="description"></xsl:variable>
                                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#{code}">Description</button>
                                   
                            
                                    <div class="modal fade" id="{code}" role="dialog">
                                      <div class="modal-dialog modal-lg">
                                        <div class="modal-content">
                                          <div class="modal-header">

                                            <h4 class="modal-title"><xsl:value-of select="name"/></h4>
                                          </div>
                                          <div class="modal-body">
                                            <p><xsl:value-of select="description"/></p>
                                          </div>
                                          <div class="modal-body">
                                          <xsl:for-each select="image">

                                                              <img  height="200" width="200" src ="{.}"/>
                                          </xsl:for-each>

                                          </div>
                                          <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                          </div>
                                        </div>
                                      </div>
                                    </div>

                            
                            
                            </td>
                            
                            
             
                        </tr>
                        </xsl:for-each>
   
                     </tbody>
                   
                 </table>
                 </div>

    </xsl:template>
                
                
                
                
                
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
