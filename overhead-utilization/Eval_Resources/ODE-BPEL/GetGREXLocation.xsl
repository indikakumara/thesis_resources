<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/grex">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q0:getGarageLocation xmlns:q0="http://ws.apache.org/axis2/xsd/grex">
                    <content>
                      Get location
                    </content>
                </q0:getGarageLocation>
    </xsl:template>
</xsl:stylesheet>