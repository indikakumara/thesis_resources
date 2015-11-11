DEF:RemoveFeatureBankTransfer{
   removeRole rId="RoadsideBank";
   removePlayerBinding pbId="RoadsideBank";
   removeBehavior bId="PayingByBankTransfer";
   updateTaskDef rId="AccountingFirm" tId="BillRepair" property="resultingMsgs" value="GarageChain-AccountingFirm.billRepair.Res,AccountingFirm-CreditCardCompany.payRepairByCreditCard.Req.payRepairByCreditCardReq";
   updateTaskDef rId="AccountingFirm" tId="BillTow" property="resultingMsgs" value="GarageChain-AccountingFirm.billTow.Res,AccountingFirm-CreditCardCompany.payTowByCreditCard.Req.payTowByCreditCardReq";
   updateTaskDef rId="AccountingFirm" tId="BillRentVehicle" property="resultingMsgs" value="GarageChain-AccountingFirm.billRentVehicle.Res,AccountingFirm-CreditCardCompany.payRentVehicleByCreditCard.Req.payRentVehicleByCreditCardReq";
   updateTaskDef rId="AccountingFirm" tId="BillLegalAdvice" property="resultingMsgs" value="GarageChain-AccountingFirm.billLegalAdvice.Res,AccountingFirm-CreditCardCompany.payLegalAdviceByCreditCard.Req.payLegalAdviceByCreditCardReq";
   removeBehaviorRefFromProcessDef pdId="Tenant1" bId="PayingByBankTransfer";
   removeBehaviorRefFromProcessDef pdId="Tenant2" bId="PayingByBankTransfer";
   addBehaviorRefToProcessDef pdId="Tenant1" bId="PayingByCreditCard";
   addBehaviorRefToProcessDef pdId="Tenant2" bId="PayingByCreditCard";
 }