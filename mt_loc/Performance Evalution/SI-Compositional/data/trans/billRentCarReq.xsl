<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
        >
    <xsl:output method="xml" indent="yes"/>
    <!--<xsl:param name="OrderTow.doneMsg"/>-->
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Body>
                <q0:billRentCar xmlns:q0="http://ws.apache.org/axis2/xsd/accountingfirm">
                    <location>
                        ssdfsdf
                    </location>
                    <memberClass>
                        swdasdf
                    </memberClass>
                </q0:billRentCar>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>