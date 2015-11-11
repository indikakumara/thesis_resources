DEF:RemoveFeatureAccommodation{
   removeRole rId="RoadsideResidence";  
   removePlayerBinding pbId="RoadsideResidence";
   removeBehavior bId="AccommodationProviding";
   updateTaskDef rId="SupportCentre" tId="AnalyseAssistRequest" property="resultingMsgs" value="SupportCentre-GarageChain.orderRepair.Req.orderRepairReq,SupportCentre-TowChain.orderTow.Req.orderTowReq,SupportCentre-Member.requestAssist.Res.analyseAssistRequestRes";
   updateTaskDef rId="SupportCentre" tId="AckRepairing" property="resultingMsgs" value="SupportCentre-Member.notifyRepairStatus.Req.notifyRepairStatusReq";
   updateProcessDef pdId="Tenant2"  property="CoT" value="eNotifyMM";
   removeBehaviorRefFromProcessDef pdId="Tenant2" bId="AccommodationProviding";
 }