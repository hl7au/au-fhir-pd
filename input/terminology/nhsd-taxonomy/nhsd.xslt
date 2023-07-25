<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:s="urn:schemas-microsoft-com:office:spreadsheet">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<CodeSystem>
			<xsl:for-each select="//s:Row[s:Cell[1]/s:Data='1']">
				<xsl:variable name="c0" select="replace(replace(replace(replace(s:Cell[2]/s:Data, '^\s+|\s+$', ''), 'urn:x-nhsd.au:item:nhsd_core;16072014;nhsd_provider_individual_type;', ''),';prac',''), ';0','')"/>
				<xsl:variable name="c" select="replace(replace(replace(replace(s:Cell[2]/s:Data, '^\s+|\s+$', ''), 'urn:x-nhsd.au:item:nhsd_core;16072014;nhsd_provider_organisation_type;', ''),';_unit',''), ';0','')"/>
				
		
				<concept>
					<code>
						<xsl:attribute name="value"><xsl:value-of select="$c"/></xsl:attribute>
					</code>
					<display>
						<xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[3]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
					</display>
					<definition>
						<xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[3]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
					</definition>
					<xsl:for-each select="//s:Row[s:Cell[1]/s:Data='2']">
						<xsl:variable name="d0" select="replace(replace(replace(replace(s:Cell[2]/s:Data, '^\s+|\s+$', ''), 'urn:x-nhsd.au:item:nhsd_core;16072014;nhsd_provider_individual_specialty;', ''),';prac',''), ';0','')"/>
						<xsl:variable name="d" select="replace(replace(replace(replace(s:Cell[2]/s:Data, '^\s+|\s+$', ''), 'urn:x-nhsd.au:item:nhsd_core;16072014;nhsd_provider_organisation_type;', ''),';_unit',''), ';0','')"/>
				<xsl:if test="starts-with($d, $c)">
							<concept>
								<code>
									<xsl:attribute name="value"><xsl:value-of select="$d"/></xsl:attribute>
								</code>
								<display>
									<xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[3]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
								</display>
								<definition>
									<xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[3]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
								</definition>
								<xsl:for-each select="//s:Row[s:Cell[1]/s:Data='3']">
									<xsl:variable name="e0" select="replace(replace(replace(replace(s:Cell[2]/s:Data, '^\s+|\s+$', ''), 'urn:x-nhsd.au:item:nhsd_core;16072014;nhsd_provider_individual_specialisation;', ''),';prac',''), ';0','')"/>
									<xsl:variable name="e" select="replace(replace(replace(replace(s:Cell[2]/s:Data, '^\s+|\s+$', ''), 'urn:x-nhsd.au:item:nhsd_core;16072014;nhsd_provider_organisation_type;', ''),';_unit',''), ';0','')"/>
									<xsl:if test="starts-with($e, $d)">
										<concept>
											<code>
												<xsl:attribute name="value"><xsl:value-of select="$e"/></xsl:attribute>
											</code>
											<display>
												<xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[3]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
											</display>
											<definition>
												<xsl:attribute name="value"><xsl:value-of select="replace(s:Cell[3]/s:Data, '^\s+|\s+$', '')"/></xsl:attribute>
											</definition>
										</concept>
									</xsl:if>
								</xsl:for-each>
							</concept>
						</xsl:if>
					</xsl:for-each>
				</concept>
			</xsl:for-each>
		</CodeSystem>
	</xsl:template>
</xsl:stylesheet>
