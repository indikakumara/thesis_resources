<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="PS-CO.payParts.Req"/>
    <xsl:template match="/">
                <q1:payPS xmlns:q1="http://ws.apache.org/axis2/xsd/co">
                    <content>133$</content>
                </q1:payPS>
    </xsl:template>
</xsl:stylesheet>