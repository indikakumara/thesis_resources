DEF:AddFeatureFuelDelivery{
    addRole rId="RoadsideServiceStation" name="RoadsideServiceStation";
    addPlayerBinding pbId="RoadsideServiceStation" rId="RoadsideServiceStation" endpoint="http://localhost:8082/axis2/services/RoadsideServiceStation";
    addTaskDef rId="RoadsideServiceStation" tId="DeliverFuel" usingMsgs="GarageChain-RoadsideServiceStation.deliverFuel.Req" resultingMsgs="GarageChain-RoadsideServiceStation.deliverFuel.Res,RoadsideServiceStation-AccountingFirm.billFuelDelivery.Res.billFuelDeliveryReq";
    setOutMsgOnTask rId="RoadsideServiceStation" tId="DeliverFuel" deliveryType="push" returnType="String" parameters="String.content" name="deliverFuel";
    setInMsgOnTask rId="RoadsideServiceStation" tId="DeliverFuel" returnType="String" parameters="String.content" name="deliverFuel";
    addTaskDef rId="AccountingFirm" tId="BillFuelDelivery" usingMsgs="RoadsideServiceStation-AccountingFirm.billFuelDelivery.Req" resultingMsgs="RoadsideServiceStation-AccountingFirm.billFuelDelivery.Res,AccountingFirm-CreditCardCompany.payFuelDeliveryByCreditCard.Req.payFuelDeliveryByCreditCardReq";
    setOutMsgOnTask rId="AccountingFirm" tId="BillFuelDelivery" deliveryType="push" returnType="String" parameters="String.location,String.garageLocation,String.memberClass" name="billFuelDelivery";
    setInMsgOnTask rId="AccountingFirm" tId="BillFuelDelivery" returnType="String" parameters="String.location,String.garageLocation,String.memberClass" name="billFuelDelivery";
    addTaskDef rId="CreditCardCompany"  transFile="payCreditReq.xsl" tId="PayFuelDeliveryByCreditCard" usingMsgs="AccountingFirm-CreditCardCompany.payFuelDeliveryByCreditCard.Req" resultingMsgs="AccountingFirm-CreditCardCompany.payFuelDeliveryByCreditCard.Res";
    setOutMsgOnTask rId="CreditCardCompany" tId="PayFuelDeliveryByCreditCard" deliveryType="push" returnType="String" parameters="String.amount,String.payer,String.payee" name="payByCreditCard";
    setInMsgOnTask rId="CreditCardCompany" tId="PayFuelDeliveryByCreditCard" returnType="String" parameters="String.amount,String.payer,String.payee" name="payByCreditCard";
    addContract cId="RoadsideServiceStation-AccountingFirm" ruleFile="RoadsideServiceStation-AccountingFirm.drl" type="permissive" state="Incipient" rAId="RoadsideServiceStation" rBId="AccountingFirm";
    addTerm  tmId="billFuelDelivery" cId="RoadsideServiceStation-AccountingFirm"  name="billFuelDelivery" direction="AtoB" messageType="push";
    addOperationToTerm tmId="billFuelDelivery" cId="RoadsideServiceStation-AccountingFirm" returnType="String" parameters="String.message,String.memberClass" name="billFuelDelivery";
    addTerm  tmId="payFuelDeliveryByCreditCard" cId="AccountingFirm-CreditCardCompany"  name="payFuelDeliveryByCreditCard" direction="AtoB" messageType="push";
    addOperationToTerm tmId="payFuelDeliveryByCreditCard" cId="AccountingFirm-CreditCardCompany" returnType="String" parameters="String.amount,String.payer,String.payee" name="payFuelDeliveryByCreditCard";
    addContract cId="GarageChain-RoadsideServiceStation" ruleFile="GarageChain-RoadsideServiceStation.drl" type="permissive" state="Incipient" rAId="GarageChain" rBId="RoadsideServiceStation";
    addTerm  tmId="deliverFuel" cId="GarageChain-RoadsideServiceStation"  name="deliverFuel" direction="AtoB" messageType="push";
    addOperationToTerm tmId="deliverFuel" cId="GarageChain-RoadsideServiceStation" returnType="String" parameters="String.content" name="deliverFuel";
    updateTaskDef rId="GarageChain" tId="OrderRepair" property="resultingMsgs" value="SupportCentre-GarageChain.orderRepair.Res.orderRepairRes,GarageChain-TowChain.sendGRLocation.Req.sendGRLocation,SupportCentre-GarageChain.notifyRepairStatus.Req.notifyRepairStatusReq,GarageChain-Member.notifyCompletion.Req.notifyCompletionReq,GarageChain-RoadsideServiceStation.deliverFuel.Req.deliverFuelReq,GarageChain-AccountingFirm.billRepair.Req.billRepairReq";
    addBehavior bId="FuelDeliveryFromServiceStation";
    addTaskRef tId="RoadsideServiceStation.DeliverFuel" bId="FuelDeliveryFromServiceStation" preEP="eDeliverFuelReq" postEP="eFuelDelivered";
    addTaskRef tId="AccountingFirm.BillFuelDelivery" bId="FuelDeliveryFromServiceStation" preEP="eBillFuelDeliveryReqd" postEP="eBilledFuelDelivery";
    addTaskRef tId="CreditCardCompany.PayFuelDeliveryByCreditCard" bId="FuelDeliveryFromServiceStation" preEP="ePayFuelDeliveryReqd" postEP="ePaidFuelDelivery";
    addBehaviorRefToProcessDef pdId="Tenant1" bId="FuelDeliveryFromServiceStation";
}