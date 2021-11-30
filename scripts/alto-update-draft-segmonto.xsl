<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:alto="http://www.loc.gov/standards/alto/ns-v4#" xpath-default-namespace="http://www.loc.gov/standards/alto/ns-v4#"
 exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="node() | @*">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>      
    </xsl:template>
    
    <xsl:template match="OtherTag[contains(@DESCRIPTION, 'line')]/@LABEL">
        <xsl:attribute name="LABEL">
            <xsl:choose>
                <xsl:when test=".='Default'">
                    <xsl:text>DefaultLine</xsl:text>
                </xsl:when>
                
                <xsl:when test=".='Interlinear'">
                    <xsl:text>InterlinearLine</xsl:text>
                </xsl:when>
                <xsl:when test=".='Rubric'">
                    <xsl:text>RubricLine</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="."/>
                </xsl:otherwise>     
            </xsl:choose>   
        </xsl:attribute>
      
    </xsl:template>
  
    <xsl:template match="OtherTag[contains(@DESCRIPTION, 'block')]/@LABEL">
        <xsl:attribute name="LABEL">
        <xsl:choose>
            <xsl:when test=".='Damage'">
                <xsl:text>DamageZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Decoration'">
                <xsl:text>GraphicZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='DropCapital'">
                <xsl:text>DropCapitalZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Main'">
                <xsl:text>MainZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='MusicNotation'">
                <xsl:text>MusicZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Numbering'">
                <xsl:text>NumberingZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='RunningTitle'">
                <xsl:text>RunningTitleZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Seal'">
                <xsl:text>SealZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Signatures'">
                <xsl:text>QuireMarksZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Stamp'">
                <xsl:text>StampZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Table'">
                <xsl:text>.='TableZone</xsl:text>
            </xsl:when>
            <xsl:when test=".='Title'">
                <xsl:text>TitlePageZone</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="."/>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:attribute>
    </xsl:template>

    
</xsl:stylesheet>