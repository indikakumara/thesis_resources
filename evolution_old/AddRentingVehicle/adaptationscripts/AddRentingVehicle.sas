DEF:AddFeatureRentingVehicle{
   addRole rId="RoadsideTaxiChain" name="RoadsideTaxiChain";
   addPlayerBinding pbId="RoadsideTaxiChain" rId="RoadsideTaxiChain" endpoint="http://localhost:8082/axis2/services/RoadsideTaxiChain";
   addTaskDef rId="RoadsideTaxiChain" tId="RentVehicle" usingMsgs="SupportCentre-RoadsideTaxiChain.rentVehicle.Req" resultingMsgs="SupportCentre-RoadsideTaxiChain.rentVehicle.Res.rentVehicleRes";
   addTaskDef rId="RoadsideTaxiChain" tId="EndLease" usingMsgs="SupportCentre-RoadsideTaxiChain.endVehicleLease.Req" resultingMsgs="SupportCentre-RoadsideTaxiChain.endVehicleLease.Res.endVehicleLeaseRes";
   setOutMsgOnTask rId="RoadsideTaxiChain" tId="RentVehicle" deliveryType="push" returnType="String" parameters="String.location" name="rentVehicle";
   setInMsgOnTask rId="RoadsideTaxiChain" tId="RentVehicle" returnType="String" parameters="String.location" name="rentVehicle";
   setOutMsgOnTask rId="RoadsideTaxiChain" tId="EndLease" deliveryType="push" returnType="String" parameters="String.bookingNo" name="endVehicleLease";
   setInMsgOnTask rId="RoadsideTaxiChain" tId="EndLease" returnType="String" parameters="String.bookingNo" name="endVehicleLease";
   updateTaskDef rId="SupportCentre" tId="AnalyseAssistRequest" property="resultingMsgs" value="SupportCentre-GarageChain.orderRepair.Req.orderRepairReq,SupportCentre-TowChain.orderTow.Req.orderTowReq,SupportCentre-RoadsideTaxiChain.rentVehicle.Req.rentVehicleReq,SupportCentre-RoadsideLawFirm.provideLegalAdvice.Req.provideLegalAdviceReq,SupportCentre-Member.requestAssist.Res.analyseAssistRequestRes";
   updateTaskDef rId="SupportCentre" tId="AckRepairing" property="resultingMsgs" value="SupportCentre-Member.notifyRepairStatus.Req.notifyRepairStatusReq3,SupportCentre-RoadsideTaxiChain.endVehicleLease.Req.endVehicleLeaseReq";
   addContract cId="SupportCentre-RoadsideTaxiChain" ruleFile="SupportCentre-RoadsideTaxiChain.drl" type="permissive" state="Incipient" rAId="SupportCentre" rBId="RoadsideTaxiChain";
   addTerm  tmId="rentVehicle" cId="SupportCentre-RoadsideTaxiChain"  name="rentVehicle" direction="AtoB" messageType="push";
   addOperationToTerm tmId="rentVehicle" cId="SupportCentre-RoadsideTaxiChain" returnType="String" parameters="String.location" name="rentVehicle";
   addTerm  tmId="endVehicleLease" cId="SupportCentre-RoadsideTaxiChain" name="endVehicleLease" direction="AtoB" messageType="push";
   addOperationToTerm tmId="endVehicleLease" cId="SupportCentre-RoadsideTaxiChain" returnType="String" parameters="String.bookingNo" name="endVehicleLease";   
   addBehavior bId="RentingVehicle";
   addTaskRef tId="RoadsideTaxiChain.RentVehicle" bId="RentingVehicle" preEP="eRentVehicleReqd" postEP="eVehicleRented";
   addTaskRef tId="RoadsideTaxiChain.EndLease" bId="RentingVehicle" preEP="eEndVehicleLease" postEP="eVehicleLeaseEnded";
   updateProcessDef pdId="Tenant2" property="CoT" value="eNotifyMM * eVehicleLeaseEnded";
   addBehaviorRefToProcessDef pdId="Tenant2" bId="RentingVehicle";
 }
