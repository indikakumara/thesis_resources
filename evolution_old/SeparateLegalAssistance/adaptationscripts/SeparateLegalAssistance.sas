DEF:SplitFeatureTowing{
  addBehavior bId="ProvidingLegalAdvice";
  addTaskRef tId="RoadsideLawFirm.ProvideLegalAdvice" bId="ProvidingLegalAdvice" preEP="eLegalAdviceReqd" postEP="eProvidedLegalAdvice";
  removeTaskRef tId="RoadsideLawFirm.ProvideLegalAdvice" bId="Towing";
  addBehaviorRefToProcessDef pdId="Tenant2" bId="ProvidingLegalAdvice";
 }