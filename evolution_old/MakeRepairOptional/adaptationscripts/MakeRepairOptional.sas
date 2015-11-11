DEF:MakeFeatureRepairOptional{
  addTaskDef rId="TowChain" tId="TowToGarageOfMember" transFile="towReq.xsl" usingMsgs="SupportCentre-TowChain.orderTow.Req" resultingMsgs="SupportCentre-TowChain.orderTow.Res,TowChain-Member.notifyTowCompletion.Req.notifyTowCompletionReq,TowChain-AccountingFirm.billTow.Res.billTowReq";
  setOutMsgOnTask rId="TowChain" tId="TowToGarageOfMember" deliveryType="push" returnType="String" parameters="String.location,String.contactNumber,String.garageLocation" name="tow";
  setInMsgOnTask rId="TowChain" tId="TowToGarageOfMember" returnType="String" parameters="String.location,String.contactNumber,String.garageLocation" name="tow";
  addContract cId="TowChain-Member" ruleFile="TowChain-Member.drl" type="permissive" state="Incipient" rAId="TowChain" rBId="Member";
  addTerm  tmId="notifyTowCompletion" cId="TowChain-Member"  name="notifyTowCompletion" direction="AtoB" messageType="push";
  addOperationToTerm tmId="notifyTowCompletion" cId="TowChain-Member" returnType="String" parameters="String.membershipID,String.status,String.message" name="notifyTowCompletion";
  addTerm  tmId="notifyTowCompletion" cId="Member-Tenant3"  name="notifyTowCompletion" direction="AtoB" messageType="push";
  addOperationToTerm tmId="notifyTowCompletion" cId="Member-Tenant3" returnType="String" parameters="String.membershipID,String.status,String.message" name="notifyTowCompletion";
  addBehavior bId="TowToGarageOfMember";
  addTaskRef tId="TowChain.TowToGarageOfMember" bId="TowToGarageOfMember" preEP="eTowReqd" postEP="eTowed * eNotifyMM";
  addBehaviorRefToProcessDef pdId="Tenant3" bId="TowToGarageOfMember";
  updateProcessDef pdId="Tenant3" property="CoT" value="eNotifyMM * ePaidTow";
}