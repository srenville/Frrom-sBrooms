<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>
    <xsl:template match="/">
        <orders>
           <xsl:apply-templates select="Products/Product"/>
        </orders>
    </xsl:template>
    
    <xsl:template match="Product">
        <xsl:if test="qis &lt; reorderLevel">
            <order>
                
                    <xsl:value-of  select="reorderQuantitiy"/>
                
                <code><xsl:value-of  select="code"/></code>
                <supplier><xsl:value-of  select="suppliers/supplier"/></supplier>
            </order>
         </xsl:if>
    </xsl:template>
    
    
    
    
 </xsl:stylesheet>
