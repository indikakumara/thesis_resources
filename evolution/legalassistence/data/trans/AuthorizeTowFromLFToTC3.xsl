<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/auslaw">
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="InspectAccident.doneMsg"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Header/>
            <soapenv:Body>
                <q1:authorizeTow xmlns:q1="http://ws.apache.org/axis2/xsd/marktow">
                    <return>
                        <xsl:value-of
                                select="$InspectAccident.doneMsg/soapenv:Envelope/soapenv:Body/q0:inspectAccidentResponse/q0:return"/>
                    </return>
                </q1:authorizeTow>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>