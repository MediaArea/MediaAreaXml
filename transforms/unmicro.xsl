<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mmt="https://mediaarea.net/micromediatrace" xmlns="https://mediaarea.net/mediatrace" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">
  <xsl:output encoding="UTF-8" method="xml" version="1.0" indent="yes" disable-output-escaping="yes"/>
  <xsl:template match="/">
    <xsl:apply-templates select="@*|node()"/>
  </xsl:template>
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="mmt:MicroMediaTrace">
    <xsl:element name="MediaTrace" namespace="https://mediaarea.net/mediatrace">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mmt:creatingLibrary">
    <xsl:element name="creatingLibrary">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mmt:media">
    <xsl:element name="media">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mmt:b">
    <xsl:element name="block">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mmt:d">
    <xsl:element name="data">
      <xsl:apply-templates select="@*|node()"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="@mtsl">
     <xsl:attribute name="xsi:schemaLocation">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@o">
     <xsl:attribute name="offset">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@n">
     <xsl:attribute name="name">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@s">
     <xsl:attribute name="size">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i">
     <xsl:attribute name="info">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i2">
     <xsl:attribute name="info2">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i3">
     <xsl:attribute name="info3">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i4">
     <xsl:attribute name="info4">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i5">
     <xsl:attribute name="info5">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i6">
     <xsl:attribute name="info6">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i7">
     <xsl:attribute name="info7">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@i8">
     <xsl:attribute name="info8">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
</xsl:stylesheet>
