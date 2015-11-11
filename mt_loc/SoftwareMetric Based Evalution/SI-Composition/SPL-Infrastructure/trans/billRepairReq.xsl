<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
        >
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="GarageChain-AccountingFirm.billRepair.Req"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Body>
                <q0:billRepair xmlns:q0="http://ws.apache.org/axis2/xsd/accountingfirm">
                    <location>
                        ssdfsdf
                    </location>
                    <garageLocation>
                        dfsdf
                    </garageLocation>
                    <memberClass>
                        swdasdf
                    </memberClass>
                </q0:billRepair>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>