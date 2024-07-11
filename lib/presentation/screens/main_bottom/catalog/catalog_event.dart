part of 'catalog_bloc.dart';

@immutable
sealed class CatalogEvent {}
class GetCatalogMenuEvent extends CatalogEvent{}
class GetChildCategoriesEvent extends CatalogEvent{
  String slug;
  GetChildCategoriesEvent({required this.slug});
}
