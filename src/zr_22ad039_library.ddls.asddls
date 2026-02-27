@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'Z22AD039_LIBRARY'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_22AD039_LIBRARY
  as select from Z22AD039_LIBRARY
{
  key book_id as BookID,
  isbn_number as IsbnNumber,
  book_title as BookTitle,
  author_name as AuthorName,
  publisher_name as PublisherName,
  category as Category,
  language as Language,
  edition as Edition,
  publish_date as PublishDate,
  total_pages as TotalPages,
  shelf_number as ShelfNumber,
  rack_number as RackNumber,
  @Consumption.valueHelpDefinition: [ {
    entity.name: 'I_CurrencyStdVH', 
    entity.element: 'Currency', 
    useForValidation: true
  } ]
  currency as Currency,
  @Semantics.amount.currencyCode: 'Currency'
  price as Price,
  available_quantity as AvailableQuantity,
  issued_quantity as IssuedQuantity,
  total_quantity as TotalQuantity,
  availability_status as AvailabilityStatus,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
