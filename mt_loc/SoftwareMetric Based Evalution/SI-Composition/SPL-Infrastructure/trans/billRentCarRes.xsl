<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
        >
    <xsl:output method="xml" indent="yes"/>
    <xsl:param name="billRepair.doneMsg"/>
    <xsl:template match="/">
        <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
            <soapenv:Body>
                <q0:billRentCarResponse xmlns:q0="http://ws.apache.org/axis2/xsd/accountingfirm">
                    <return xmlns:axis2xd="http://ws.apache.org/axis2/xsd"
                            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                            xsi:type="axis2xd:RentCarBill">
                        <amount>1213</amount>
                        <id>dffdff</id>
                    </return>
                </q0:billRentCarResponse>
            </soapenv:Body>
        </soapenv:Envelope>
    </xsl:template>
</xsl:stylesheet>