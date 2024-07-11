import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:texnomart/data/fav_check/converter_fav_both.dart';
import 'package:texnomart/data/source/local/favourite_hive.dart';
import 'package:texnomart/data/source/remote/response/res_special_brends/res_special_brends.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/domain/repo_impl.dart';
import 'package:texnomart/utils/status.dart';

import '../../../../data/source/remote/response/res_slider/slider_resoponse.dart';
import '../../../../data/source/remote/response/res_special_category/res_special_category.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<ProductParam> lastListNew =[];
  List<ProductParam> lastListHit =[];
  final  favConverter = FavConverter();
  HomeBloc()
      : super(HomeState(
            sliderStatus: Status.initial,
            brandStatus: Status.initial,
            popularStatus: Status.initial,
            newProductStatus: Status.initial,
            hitProductStatus: Status.initial,
            sliderList: [],
            specialCategoryList: [],
            brandList: [],
            newProductList: [],
            hitProductList: [],
            isFav: false)) {
    final repoFavorite = FavouriteHiveRepo();
    on<HomeEvent>((event, emit) {});

    on<LoadAllDataEvent>((event, emit) async {
      final repo = RepoImpl();
      try {
        emit(state.copyWith(sliderStatus: Status.loading));
        SliderDataResponse sliderDataResponse = await repo.getSliderData();
        emit(state.copyWith(
            sliderList: sliderDataResponse.data?.data ?? [],
            sliderStatus: Status.success));
      } catch (e) {
        emit(state.copyWith(sliderStatus: Status.fail));
      }
      try {
        emit(state.copyWith(popularStatus: Status.loading));
        SpecialCategories specialCategories = await repo.getSpecialCategories();
        emit(state.copyWith(
            specialList: specialCategories.data?.data ?? [],
            popularStatus: Status.success));
      } catch (e) {
        emit(state.copyWith(sliderStatus: Status.fail));
      }

      try {
        emit(state.copyWith(brandStatus: Status.loading));
        SpecialBrends specialBrends = await repo.getSpecialBrands();

        emit(state.copyWith(
            brandList: specialBrends.data?.data ?? [],
            brandStatus: Status.success));
      } catch (e) {
        emit(state.copyWith(brandStatus: Status.fail));
      }

      try {
        emit(state.copyWith(newProductStatus: Status.loading));
        lastListNew = await repo.getNewProducts();
        emit(state.copyWith(
            newProductList: favConverter.isFav(lastListNew), newProductStatus: Status.success));
        print("LISSSSSSSSSSSSST${favConverter.isFav(lastListNew).length}");
      } catch (e) {
        print('home bloc catch: ${e}');
        emit(state.copyWith(sliderStatus: Status.fail));
      }

      try {
        emit(state.copyWith(hitProductStatus: Status.loading));
        lastListHit = await repo.getHitProducts();
        for(int i =0 ; i <lastListHit.length; i++){
          print("HOME BLOC ID ${lastListHit[i].id.toString()}");
        }
        emit(state.copyWith(
            hitProductList: favConverter.isFav(lastListHit),
            hitProductStatus: Status.success));
        print('length ${state.hitProductList.length}');
      } catch (e) {
        emit(state.copyWith(hitProductStatus: Status.fail));
      }
    });

    on<AddToFavoriteNewEvent>((event, emit) {
      try {
        FavConverter repo = FavConverter();
        lastListNew = repo.checking(lastListNew, event.id);
       lastListNew = repo.isFav(lastListNew);
        print("insida event");
        emit(state.copyWith(newProductList: lastListNew));
      } catch (e) {
        print("errorr cetach ${e.toString()}");
      }
    });

    on<AddToFavoriteHitEvent>((event, emit) {
      try {
        FavConverter repo = FavConverter();
        lastListHit = repo.checking(lastListHit, event.id);
        lastListHit =  repo.isFav(lastListHit);
        emit(state.copyWith(hitProductList: lastListHit));
      } catch (e) {
        print("errorr cetach ${e.toString()}");
      }
    });
    // on<DeleteFavoriteEvent>((event, emit) {
    //   try {
    //     repoFavorite.removeFavorite(event.id);
    //     bool isIn = repoFavorite.isFavorite(event.id);
    //     emit(state.copyWith(isFav: isIn));
    //   } catch (e) {}
    // });
  }
}
