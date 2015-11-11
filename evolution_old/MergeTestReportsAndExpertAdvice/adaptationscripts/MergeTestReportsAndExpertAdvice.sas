DEF:MergeFeaturesTestReportsAndExpertAdvice{
    removeBehavior bId="ProvidingVehicleInspection";
    addTaskRef tId="GarageChain.InspectVehicle" bId="ProvidingExpertAdvice" preEP="eVehicleInspectionReq" postEP="eInspectedVehicle";
    removeBehaviorRefFromProcessDef pdId="Tenant3" bId="ProvidingVehicleInspection";
    addBehaviorRefToProcessDef pdId="Tenant3" bId="ProvidingExpertAdvice";
 }