import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../../data/converter/Convertor.dart';
import '../../../data/fav_check/basket_check.dart';
import '../../../data/fav_check/converter_fav_both.dart';
import '../../../data/source/local/ProductModel/favourite_model.dart';
import '../../../data/source/local/basket_hive.dart';
import '../../../domain/basket_model/ProductParam.dart';
import '../../../utils/status.dart';

part 'fav_event.dart';

part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavInitial> {
  final repoBasket = BasketHive();

  FavBloc()
      : super(FavInitial(list: [], favStatus: Status.initial, isIn: false)) {
    List<ProductParam> list = [];
    final favConverter = FavConverter();
    final basketConvertor = BasketConverter();

  //  List<ProductParam> lastList = [];
    on<FavEvent>((event, emit) {});

    on<LoadFavEvent>((event, emit) {
      try {
        List<FavouriteModel> favorites =
            Hive.box<FavouriteModel>('Favourites').values.toList();

        for (int i = 0; i < favorites.length; i++) {
          var data = Convertor.fromFavoriteToParam(favorites[i]);
          list.add(data);
        }
      // list = basketConvertor.isInBasket(list);
        list = favConverter.isFav(list);

        emit(state.copyWith(list: list, favStatus: Status.success));
      } catch (e) {}
    });

    on<AddToFavoriteNewEvent>((event, emit) {
      try {
        FavConverter repo = FavConverter();
        list = repo.checking(list, event.id);
        print("insida event");
        emit(state.copyWith(list: list));
      } catch (e) {
        print("error catch ${e.toString()}");
      }
    });

    on<AddProductToBasketEvent>((event, emit) {
      try {
        print("BASKETNI TRY 1");
        list = basketConvertor.checkingBasket(list, event.id);
      //  list = basketConvertor.isInBasket(list);
        print("BASKETNI TRY 2");
        emit(state.copyWith(list: list));
      } catch (e) {
        print("BASKETNI CATCHI ${e.toString()}");
      }
    });
  }
}
