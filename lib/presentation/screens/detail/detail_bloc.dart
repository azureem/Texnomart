import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/converter/Convertor.dart';
import 'package:texnomart/data/source/local/basket_hive.dart';
import 'package:texnomart/data/source/local/favourite_hive.dart';
import 'package:texnomart/domain/repo_impl.dart';

import '../../../data/source/remote/response/detail_response/detail_responce.dart';
import '../../../domain/basket_model/ProductParam.dart';
import '../../../utils/status.dart';

part 'detail_event.dart';

part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(DetailState(isIn: false,isAdd: false, id: 0, detailItemStatus: Status.initial, detailItem: ProductParam(
    id: 0,
    title: "",
    price: 0,
    img: '',
    isCheck: false,
    isFav: false,
    count: 0,
    smallImages: []))) {
    final repoBasket = BasketHive();
    final repoFav = FavouriteHiveRepo();
    final repo = RepoImpl();
    on<GetItemDetailEvent>((event, emit) async {

      try {
        emit(state.copyWith(detailItemStatus: Status.loading));
        final detailItem = await repo.detailProductResponse(event.id.toString());
        emit(state.copyWith(
            detailItem: detailItem, detailItemStatus: Status.success));

       bool isIn = repoBasket.isInBasket(event.id);
      emit(state.copyWith(isAdd: isIn));
      } catch (e) {
        emit(state.copyWith(detailItemStatus: Status.fail));
      }
    });

    on<AddProductToBasketEvent>((event, emit) {
      try {
        var convertedData = Convertor.paramToBasketModel(event.data);
        repoBasket.addBasket(convertedData);
        print('product successfully added to basket');
        emit(state.copyWith(isAdd: true));
      } catch (e) {

      }
    });

    on<AddToFavEvent>((event, emit){
      try{
        var convertedData =  Convertor.fromParamToFavorite(event.data);
        repoFav.addFavorite(convertedData);
        emit(state.copyWith(isIn: true));
      }
          catch(e){

          }
    });
  }
}
