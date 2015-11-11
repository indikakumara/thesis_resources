<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
    <xsl:output method="xml" indent="yes" />
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                          xmlns:q0="http://ws.apache.org/axis2/xsd/supportcentre">
            <soapenv:Body>
                <q0:analyseRepairOnGarageOrder>
                    <q0:membershipID>sdfdsf</q0:membershipID>
                    <q0:location>ddsfdfg</q0:location>
                    <q0:message>fgf</q0:message>
                    <q0:repairTypes>ffrg</q0:repairTypes>
                    <q0:phoneNumber>gfdgd</q0:phoneNumber>
                </q0:analyseRepairOnGarageOrder>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>