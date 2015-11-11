<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/vc">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q0:endVehicleRent xmlns:q0="http://ws.apache.org/axis2/xsd/vc">
                    <content> End Vehicle Rent</content>
                </q0:endVehicleRent>
    </xsl:template>
</xsl:stylesheet>