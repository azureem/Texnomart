import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/domain/repo_impl.dart';

import '../../../../data/fav_check/converter_fav_both.dart';
import '../../../../data/source/local/basket_hive.dart';
import '../../../../data/source/remote/response/res_menu_catalog/catalog_menu.dart';
import '../../../../domain/basket_model/ProductParam.dart';
import '../../../../utils/status.dart';

part 'catalog_event.dart';

part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc()
      : super(CatalogState(catalogMenuStatus: Status.initial, catalogList: [])) {

    final repoBasket = BasketHive();
    final repo = RepoImpl();
    final favConverter = FavConverter();
    List<ProductParam> lastList = [];
    on<CatalogEvent>((event, emit) {});



    on<GetCatalogMenuEvent>((event, emit) async {
      final repo = RepoImpl();
      try {
        emit(state.copyWith(catalogMenuStatus: Status.loading));
        CatalogMenu catalogMenu = await repo.getCatalogMenu();
        emit(state.copyWith(
            catalogList: catalogMenu.data!.data ?? [],
            catalogMenuStatus: Status.success));
      } catch (e) {
        emit(state.copyWith(catalogMenuStatus: Status.fail));
      }
    });


    // on<GetChildCategoriesEvent>((event, emit) async {
    //   final repo = RepoImpl();
    //   try {
    //     lastList = await repo.getOmmabopCategory(event.slug);
    //
    //     emit(state.copyWith(
    //         slugStatus: Status.success,
    //         ommabopCategoryLs: favConverter.isFav(lastList)));
    //   } catch (e) {
    //     emit(state.copyWith(slugStatus: Status.fail));
    //   }
    // });

  }
}
