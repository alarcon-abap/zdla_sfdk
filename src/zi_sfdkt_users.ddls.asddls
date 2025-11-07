@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Feedback Users'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_sfdkt_users
  as select from usr21
  association [1..1] to adrp as _UsersAdress on $projection.UserAddressId = _UsersAdress.persnumber
{
  key bname      as BusinessName,
      persnumber as UserAddressId,
      _UsersAdress.name_first as UserName,
      
      _UsersAdress
}
