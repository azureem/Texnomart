part of 'home_bloc.dart';

@immutable
class InitHomeState {}

class HomeState extends InitHomeState {
  final Status sliderStatus;
  final Status brandStatus;
  final Status popularStatus;
  final Status newProductStatus;
  final Status hitProductStatus;
  final List<InnerDataSlider> sliderList; //gone
  final List<SpecialInnerData> specialCategoryList; //gone
  final List<SpecialBrendsData2> brandList; //gone
  final List<ProductParam> newProductList; //gone
  final List<ProductParam> hitProductList; //gone
  final bool isFav;


  HomeState({required this.sliderStatus,
    required this.brandStatus,
    required this.popularStatus,
    required this.newProductStatus,
    required this.hitProductStatus,
    required this.sliderList,
    required this.specialCategoryList,
    required this.brandList,
    required this.newProductList,
    required this.hitProductList,
    required this.isFav}):super();

  HomeState copyWith({List<SpecialBrendsData2>? brandList,
    List<SpecialInnerData>? specialList,
    List<ProductParam>? newProductList,
    Status? sliderStatus,
    Status? brandStatus,
    Status? popularStatus,
    Status? newProductStatus,
    Status? hitProductStatus,
    List<InnerDataSlider>? sliderList,
    List<ProductParam>?hitProductList,
    bool? isFav}) {
    return HomeState(
        sliderStatus: sliderStatus ?? this.sliderStatus,
        brandStatus: brandStatus ?? this.brandStatus,
        popularStatus: popularStatus ?? this.popularStatus,
        newProductStatus: newProductStatus ?? this.newProductStatus,
        hitProductStatus: hitProductStatus ?? this.hitProductStatus,
        sliderList: sliderList ?? this.sliderList,
        brandList: brandList ?? this.brandList,
        newProductList: newProductList ?? this.newProductList,
        specialCategoryList: specialList ?? this.specialCategoryList,
        hitProductList: hitProductList ?? this.hitProductList,
        isFav: isFav?? this.isFav);
  }
}

