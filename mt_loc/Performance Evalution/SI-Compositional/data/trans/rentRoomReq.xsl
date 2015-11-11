<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
        >
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="AnalyseRepairOnGarageOrder.doneMsg"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Body>
                <q0:rentRoom xmlns:q0="http://ws.apache.org/axis2/xsd/residence">
                    <location>
                        ssdfsdf
                    </location>
                    <numberRooms>
                        3434
                    </numberRooms>
                </q0:rentRoom>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>