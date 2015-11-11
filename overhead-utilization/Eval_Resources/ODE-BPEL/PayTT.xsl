<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q1:payTT xmlns:q1="http://ws.apache.org/axis2/xsd/co">
                    <content>tow done 255$</content>
                </q1:payTT>
    </xsl:template>
</xsl:stylesheet>