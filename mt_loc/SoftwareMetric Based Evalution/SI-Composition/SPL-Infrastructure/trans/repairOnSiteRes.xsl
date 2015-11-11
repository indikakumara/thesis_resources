<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
        >
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="OrderRepairOnSite.doneMsg"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Body>
                <q0:repairOnSiteResponse xmlns:q0="http://ws.apache.org/axis2/xsd/garagechain">
                    <return>
                        done
                    </return>
                </q0:repairOnSiteResponse>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>