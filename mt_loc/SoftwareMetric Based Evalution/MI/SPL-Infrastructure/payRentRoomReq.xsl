<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        >
    <xsl:output method="xml" indent="yes"/>
    <!--<xsl:param name="GarageChain-AccountingFirm.pay.Req"/>-->
    <xsl:template match="/">
        <q0:payRentRoom xmlns:q0="http://ws.apache.org/axis2/xsd/paymentservice">
            <amount>
                23423424
            </amount>
            <payer>
                dsdfsdf
            </payer>
            <paymentMethod>
                credit
            </paymentMethod>
        </q0:payRentRoom>
    </xsl:template>
</xsl:stylesheet>