@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Feeedback'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zc_sfdk_feedback
  as projection on zr_sfdk_feedback
{
  key FeedbackId,
      FeedbackText,
      Sentiment,
      Score,
      @Semantics.systemDate.createdAt: true
      CreatedAt,
      @Semantics.user.createdBy: true
      @ObjectModel.text.element: [ 'UserName' ]  
      CreatedBy,
      UserName,
      LastChangedAt,
      /* Associations */
      _Users
}
