<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/grex">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q0:doRepair xmlns:q0="http://ws.apache.org/axis2/xsd/grex">
                    <content> Vehicle in GREx</content>
                </q0:doRepair>
    </xsl:template>
</xsl:stylesheet>