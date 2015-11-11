<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q0:Roadside-Anno-T1Response xmlns:q0="http://ws.apache.org/axis2/xsd/supportcentre">
                    <return>ActionTaken</return>
                </q0:Roadside-Anno-T1Response>
    </xsl:template>
</xsl:stylesheet>