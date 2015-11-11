DEF:ModifyFeatureRepair{
   updateTaskDef rId="SupportCentre" tId="AckRepairing" property="resultingMsgs" value="SupportCentre-RoadsideTaxiChain.endVehicleLease.Req.endVehicleLeaseReq";
   updateTaskDef rId="GarageChain" tId="OrderRepair" property="resultingMsgs" value="SupportCentre-GarageChain.orderRepair.Res.orderRepairRes,GarageChain-TowChain.sendGRLocation.Req.sendGRLocation,SupportCentre-GarageChain.notifyRepairStatus.Req.notifyRepairStatusReq,GarageChain-Member.notifyCompletion.Req.notifyCompletionReq";
   updateTaskDef rId="Member" tId="NotifyCompletion" property="usingMsgs" value="GarageChain-Member.notifyCompletion.Res";
   addContract cId="GarageChain-Member" ruleFile="GarageChain-Member.drl" type="permissive" state="Incipient" rAId="GarageChain" rBId="Member";
   addTerm  tmId="notifyCompletion" cId="GarageChain-Member"  name="notifyCompletion" direction="AtoB" messageType="push";
   addOperationToTerm tmId="notifyCompletion" cId="GarageChain-Member" returnType="String" parameters="String.membershipID,String.status,String.message" name="notifyCompletion";
 }
