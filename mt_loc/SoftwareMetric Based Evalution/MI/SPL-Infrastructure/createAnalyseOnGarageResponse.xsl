<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        >
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <ns:analyseRepairOnGarageOrderResponse
                xmlns:ns="http://ws.apache.org/axis2/xsd/supportcentre">
            <ns:return xmlns:ax23="http://ws.apache.org/axis2/xsd"
                       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="ax23:AnalyseResponseForOnGarage">
                <ax23:contactNumber>gfgh</ax23:contactNumber>
                <ax23:location>fgdffhd</ax23:location>
                <ax23:repairTypes>gfh</ax23:repairTypes>
                <ax23:towing>true</ax23:towing>
            </ns:return>
        </ns:analyseRepairOnGarageOrderResponse>
    </xsl:template>
</xsl:stylesheet>