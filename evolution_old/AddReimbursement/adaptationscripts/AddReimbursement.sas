DEF:AddFeatureReimbursement{
   addTaskDef rId="Tenant3" tId="NotifyReimbursementCompletion" usingMsgs="Member-Tenant3.reimburse.Res";
   setOutMsgOnTask rId="Tenant3" tId="NotifyReimbursementCompletion" deliveryType="push" returnType="String" parameters="String.bills,String.payee,String.content" name="reimburse";
   addTaskDef rId="Member" tId="NotifyReimbursementCompletion" usingMsgs="Member-AccountingFirm.reimburse.Res";
   setOutMsgOnTask rId="Member" tId="NotifyReimbursementCompletion" deliveryType="push" returnType="String" parameters="String.bills,String.payee,String.content" name="reimburse";
   addTaskDef rId="AccountingFirm" tId="ValidateReimbursementBills" usingMsgs="Member-AccountingFirm.reimburse.Req" transFile="validateBillsReq.xsl" resultingMsgs="Member-AccountingFirm.reimburse.Res.reimburseRes,AccountingFirm-CreditCardCompany.payBillsByCreditCard.Req.payBillsByCreditCardReq";
   setOutMsgOnTask rId="AccountingFirm" tId="ValidateReimbursementBills" deliveryType="push" returnType="String" parameters="String.bills,String.payee" name="validateBills";
   setInMsgOnTask rId="AccountingFirm" tId="ValidateReimbursementBills" returnType="String" parameters="String.bills,String.payee" name="validateBills";
   addTaskDef rId="CreditCardCompany" tId="PayBillsByCreditCard" usingMsgs="Member-AccountingFirm.reimburse.Req" transFile="validateBillsReq.xsl" resultingMsgs="Member-AccountingFirm.reimburse.Res.reimburseRes,AccountingFirm-CreditCardCompany.payBillsByCreditCard.Req.payBillsByCreditCardReq";
   setOutMsgOnTask rId="CreditCardCompany" tId="PayBillsByCreditCard" deliveryType="push" returnType="String" parameters="String.amount,String.payer,String.payee" name="payByCreditCard";
   setInMsgOnTask rId="CreditCardCompany" tId="PayBillsByCreditCard" returnType="String" parameters="String.amount,String.payer,String.payee" name="payByCreditCard";
   addContract cId="Member-AccountingFirm" ruleFile="Member-AccountingFirm.drl" type="permissive" state="Incipient" rAId="Member" rBId="AccountingFirm";
   addTerm  tmId="reimburse" cId="Member-AccountingFirm" name="reimburse" direction="AtoB" messageType="push";
   addOperationToTerm tmId="reimburse" cId="Member-AccountingFirm" returnType="String" parameters="String.bills,String.payee,String.content" name="reimburse";
   addTerm  tmId="reimburse" cId="Member-Tenant3"  name="reimburse" direction="BtoA" messageType="push";
   addOperationToTerm tmId="reimburse" cId="Member-Tenant3" returnType="String" parameters="String.bills,String.payee,String.content" name="reimburse";
   addTerm  tmId="payBillsByCreditCard" cId="AccountingFirm-CreditCardCompany"  name="payBillsByCreditCard" direction="AtoB" messageType="push";
   addOperationToTerm tmId="payBillsByCreditCard" cId="AccountingFirm-CreditCardCompany" returnType="String" parameters="String.amount,String.payer,String.payee" name="payBillsByCreditCard";
   addBehavior bId="Reimbursing";
   addTaskRef tId="AccountingFirm.ValidateReimbursementBills" bId="Reimbursing" preEP="eReimburseReq" postEP="eReimburseAccepted";
   addTaskRef tId="CreditCardCompany.PayBillsByCreditCard" bId="Reimbursing" preEP="ePayBillsReqd" postEP="ePaidBills";
   addTaskRef tId="Member.NotifyReimbursementCompletion" bId="Reimbursing" preEP="ePaidBills";
   updateProcessDef pdId="Tenant3" property="CoT" value="eNotifyMM | ePaidBills";
   addBehaviorRefToProcessDef pdId="Tenant3" bId="Reimbursing";
}