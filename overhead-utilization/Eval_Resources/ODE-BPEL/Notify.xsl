<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q0:RoadsideP3Response xmlns:q0="http://roadside-ode-paper3/noal">
                    <q0:result>ComplainResolved</q0:result>
                </q0:RoadsideP3Response>
    </xsl:template>
</xsl:stylesheet>