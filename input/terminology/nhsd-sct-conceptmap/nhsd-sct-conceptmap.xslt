<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:s="urn:schemas-microsoft-com:office:spreadsheet">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<ConceptMap>
			  <div>
					<table>
      <tbody>
        <tr>
            <th style="width:30%">Name</th>
            <th style="width:10%">Equivalence</th>
            <th style="width:10%">SNOMED</th>
            <th style="width:10%">NHSD Core</th>
            <th style="width:40%">Comment</th>
          </tr>
       		<xsl:for-each select="//s:Row[s:Cell[4]/s:Data != '-']">
            <tr>
              <td><xsl:value-of select="replace(s:Cell[2]/s:Data, '^\s+|\s+$', '')"/></td>
              <td><xsl:if test="s:Cell[5]/s:Data = '1'">equivalent</xsl:if><xsl:if test="s:Cell[5]/s:Data != '1'">inexact</xsl:if></td>
              <td><xsl:value-of select="replace(s:Cell[4]/s:Data, '^\s+|\s+$', '')"/></td>
              <td><xsl:value-of select="replace(s:Cell[1]/s:Data, '^\s+|\s+$', '')"/></td>
              <td><xsl:value-of select="replace(s:Cell[6]/s:Data, '^\s+|\s+$', '')"/></td>
            </tr>
       		</xsl:for-each>
	
      </tbody>
    </table>
          
          </div>

			<xsl:for-each select="//s:Row[s:Cell[4]/s:Data != '-']">
			
					<element>
            <code>
              <xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[4]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
            </code>
            <target>
                <code>
                  <xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[1]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
                </code>
                  <xsl:if test="s:Cell[5]/s:Data = '1'">
                   <equivalence value="equivalent"/>
                </xsl:if>
                     <xsl:if test="s:Cell[5]/s:Data != '1'">
                 <equivalence value="inexact"/>
                </xsl:if>
                <xsl:if test="s:Cell[6]/s:Data != '-'">
                  <comment>
                    <xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[6]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>    
                  </comment>
                </xsl:if>
                
            </target>
          </element>
			</xsl:for-each>
			</ConceptMap>
			
	</xsl:template>
</xsl:stylesheet>
