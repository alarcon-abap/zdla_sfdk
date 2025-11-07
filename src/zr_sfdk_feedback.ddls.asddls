@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Feedback'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zr_sfdk_feedback
  as select from zi_sfdkt_001
  association [1..1] to zi_sfdkt_users as _Useres on $projection.CreatedBy = _Useres.BusinessName
{
  key FeedbackId,
      FeedbackText,
      Sentiment,
      Score,
      CreatedAt,
      CreatedBy,
      _Useres.UserName,
      LastChangedAt,

      _Useres
}
