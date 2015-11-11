<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q1:deliver xmlns:q1="http://ws.apache.org/axis2/xsd/ttp">
                    <garageLocation>kandy gampola</garageLocation>
                </q1:deliver>
    </xsl:template>
</xsl:stylesheet>