<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                xmlns:q0="http://ws.apache.org/axis2/xsd/co">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
                <q0:analyze xmlns:q0="http://ws.apache.org/axis2/xsd/co">
                    <memId>
                   1223abc
                    </memId>
                    <complainDetails>
                    broken car
                    </complainDetails>
                </q0:analyze>
    </xsl:template>
</xsl:stylesheet>