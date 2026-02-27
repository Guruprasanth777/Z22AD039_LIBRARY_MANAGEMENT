@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'Z22AD039_LIBRARY'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_22AD039_LIBRARY
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_22AD039_LIBRARY
  association [1..1] to ZR_22AD039_LIBRARY as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key BookID,
  IsbnNumber,
  BookTitle,
  AuthorName,
  PublisherName,
  Category,
  Language,
  Edition,
  PublishDate,
  TotalPages,
  ShelfNumber,
  RackNumber,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  @Semantics: {
    Amount.Currencycode: 'Currency'
  }
  Price,
  AvailableQuantity,
  IssuedQuantity,
  TotalQuantity,
  AvailabilityStatus,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
