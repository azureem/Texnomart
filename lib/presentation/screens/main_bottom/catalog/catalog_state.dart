part of 'catalog_bloc.dart';

class CatalogState {
  final Status catalogMenuStatus;
  final List<GetCatalogMenu> catalogList;

  CatalogState({required this.catalogMenuStatus, required this.catalogList});

  CatalogState copyWith(
      {Status? catalogMenuStatus, List<GetCatalogMenu>? catalogList}) {
    return CatalogState(
        catalogList: catalogList ?? this.catalogList,
        catalogMenuStatus: catalogMenuStatus ?? this.catalogMenuStatus);
  }
}
