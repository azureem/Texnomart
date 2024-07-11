import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/converter/Convertor.dart';
import 'package:texnomart/data/fav_check/basket_check.dart';
import 'package:texnomart/data/fav_check/converter_fav_both.dart';
import 'package:texnomart/data/source/local/BasketModel/basket_model.dart';
import 'package:texnomart/utils/status.dart';

import '../../../../data/source/local/basket_hive.dart';
import '../../../../domain/basket_model/ProductParam.dart';

part 'basket_event.dart';

part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc()
      : super(BasketState(basketStatus: Status.initial, basketList: [])) {
    // @override
    // Stream<BasketState> mapEventToState(BasketEvent event) async* {
    //   // if (event is DeleteProductInBasketEvent) {
    //   //   // Update basketList by removing the product with matching productId
    //   //   List<ProductParam> updatedList = state.basketList.where((product) => product.id != event.id).toList();
    //   //
    //   //   yield state.copyWith(basketList: updatedList);
    //   // }
    //   // Handle other events if needed
    // }
    List<ProductParam> initialList = [];
    final basketRepo = BasketHive();
    final basketConvertor = BasketConverter();
    final favConvertor = FavConverter();
    int sum = 0;

    on<BasketEvent>((event, emit) {});

    on<GetProductsInBasketEvent>((event, emit) {
      try {
        emit(state.copyWith(basketStatus: Status.loading));
        List<BasketModel> listInHive = basketRepo.getAllFromBasket();
        print('listInHive -> ${listInHive.length}');
        List<ProductParam> finalList = [];
        for (int i = 0; i < listInHive.length; i++) {
          var data = Convertor.basketProductToParam(listInHive[i]);
          finalList.add(data);
          sum+=finalList[i].count;
        }
        // finalList = favConvertor.isFav(initialList);



        emit(state.copyWith(
            basketStatus: Status.success, basketList: finalList));
      } catch (e) {
        print("exception -> ${e}");
        emit(state.copyWith(basketStatus: Status.fail));
      }
    });

    on<DeleteProductInBasketEvent>((event, emit) {
      try {
        basketRepo.removeFromBasket(event.id);
        List<BasketModel> listInHive = basketRepo.getAllFromBasket();
        List<ProductParam> finalList = [];
        for (int i = 0; i < listInHive.length; i++) {
          var data = Convertor.basketProductToParam(listInHive[i]);
          initialList.add(data);
        }
        //  initialList = basketConvertor.isInBasket(initialList);
        emit(state.copyWith(
            basketStatus: Status.success, basketList: initialList));
      } catch (e) {}
    });

    on<AddToFaveEvent>((event, emit) {
      //  initialList = basketConvertor.checkingBasket(event.finalList, event.id);
      initialList = favConvertor.checking(event.finalList, event.id);
      initialList = favConvertor.isFav(initialList);
      // initialList = basketConvertor.isInBasket(initialList);
      emit(state.copyWith(basketList: initialList));
    });

    on<CalculationClickEvent>((event, emit) {
      try {
        List<BasketModel> list = BasketHive().getAllFromBasket();
        for (int i = 0; i < list.length; i++) {
          if (list[i].id == event.id) {
            if (event.operation == "p") {
              print("PPPPPP  plus");
              BasketModel model = BasketModel(
                  id: list[i].id,
                  title: list[i].title,
                  price: list[i].price,
                  img: list[i].img,
                  isCheck: list[i].isCheck,
                  isFav: list[i].isFav,
                  count: list[i].count + 1);
              list[i] = model;
              print("PPPPPP  SON=>${model.count}");
              BasketHive().addBasket(model);
            } else if (event.operation == "m") {
              print("MMMMM  minus");

              BasketModel model2 = BasketModel(
                  id: list[i].id,
                  title: list[i].title,
                  price: list[i].price,
                  img: list[i].img,
                  isCheck: list[i].isCheck,
                  isFav: list[i].isFav,
                  count: list[i].count - 1);
              print("MMMMM   SON=>${list[i].count}");
              list[i] = model2;
              BasketHive().addBasket(model2);
            }
          }

          List<ProductParam> ls = [];
          for (int i = 0; i < list.length; i++) {
            var value = Convertor.basketProductToParam(list[i]);
            ls.add(value);
          }

          emit(state.copyWith(basketList: ls));
        }
      } catch (e) {}
    });
  }
}
