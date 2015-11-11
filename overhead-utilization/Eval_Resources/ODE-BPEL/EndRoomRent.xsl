<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/hc">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q0:endRoomRent xmlns:q0="http://ws.apache.org/axis2/xsd/hc">
                    <content>End room rent</content>
                </q0:endRoomRent>
    </xsl:template>
</xsl:stylesheet>