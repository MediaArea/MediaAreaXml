<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mt="https://mediaarea.net/mediatrace" xmlns="https://mediaarea.net/micromediatrace" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">
  <xsl:output encoding="UTF-8" method="xml" version="1.0" indent="no" disable-output-escaping="yes"/>
  <xsl:template match="/">
    <xsl:apply-templates select="@*|node()"/>
  </xsl:template>
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="mt:MediaTrace">
    <xsl:element name="MicroMediaTrace" namespace="https://mediaarea.net/micromediatrace">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mt:creatingLibrary">
    <xsl:element name="creatingLibrary">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mt:media">
    <xsl:element name="media">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mt:block">
    <xsl:element name="b">
      <xsl:apply-templates select="@*|node()" />
    </xsl:element>
  </xsl:template>
  <xsl:template match="mt:data">
    <xsl:element name="d">
      <xsl:apply-templates select="@*|node()"/>
    </xsl:element>
  </xsl:template>
  <xsl:template match="mt:MediaTrace/@xsi:schemaLocation">
     <xsl:attribute name="mtsl">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@offset">
     <xsl:attribute name="o">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@name">
     <xsl:attribute name="n">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@size">
     <xsl:attribute name="s">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info">
     <xsl:attribute name="i">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info2">
     <xsl:attribute name="i2">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info3">
     <xsl:attribute name="i3">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info4">
     <xsl:attribute name="i4">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info5">
     <xsl:attribute name="i5">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info6">
     <xsl:attribute name="i6">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info7">
     <xsl:attribute name="i7">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
  <xsl:template match="@info8">
     <xsl:attribute name="i8">
        <xsl:value-of select="."/>
     </xsl:attribute>
  </xsl:template>
</xsl:stylesheet>