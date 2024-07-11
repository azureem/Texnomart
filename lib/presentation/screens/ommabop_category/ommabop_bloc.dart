import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/domain/repo_impl.dart';

import '../../../data/converter/Convertor.dart';
import '../../../data/fav_check/basket_check.dart';
import '../../../data/fav_check/converter_fav_both.dart';
import '../../../data/source/local/basket_hive.dart';
import '../../../domain/basket_model/ProductParam.dart';
import '../../../utils/status.dart';

part 'ommabop_event.dart';

part 'ommabop_state.dart';

class OmmabopBloc extends Bloc<OmmabopEvent, OmmabopInitialState> {
  OmmabopBloc()
      : super(OmmabopInitialState(
      slugStatus: Status.initial,
      ommabopCategoryLs: [],
      typeItem: ProductParam(
          id: 0,
          title: "",
          price: 0,
          img: "",
          isCheck: false,
          isFav: false,
          count: 0,
          smallImages: []),
      isAdd: false,
      isIn: false)) {
    final repoBasket = BasketHive();
    final repo = RepoImpl();

    final favConverter = FavConverter();
    final basketConvertor = BasketConverter();
    List<ProductParam> lastList = [];
    on<OmmabopEvent>((event, emit) {});


    on<GetOmmabopEvent>((event, emit) async {
      final repo = RepoImpl();
      try {
        lastList = await repo.getOmmabopCategory(event.slug);
        lastList = favConverter.isFav(lastList);
        lastList = basketConvertor.isInBasket(lastList);

        emit(state.copyWith(
            slugStatus: Status.success,
            ommabopCategoryLs:lastList));
      } catch (e) {
        emit(state.copyWith(slugStatus: Status.fail));
      }
    });



    on<AddProductToBasketEvent>((event, emit) {
      try {

        lastList = basketConvertor.checkingBasket(lastList,event.id) ;
        emit(state.copyWith(ommabopCategoryLs: lastList));
      } catch (e) {
        print("OMMMAAA CATCH ${e.toString()}");
      }
    });




    on<AddToFavoriteHitEvent>((event, emit) {
      try {
        lastList = favConverter.checking(lastList, event.id);
        emit(state.copyWith(ommabopCategoryLs: lastList));
      } catch (e) {}
    });
  }
}
