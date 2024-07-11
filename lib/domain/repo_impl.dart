import 'package:dio/dio.dart';
import 'package:texnomart/data/converter/Convertor.dart';
import 'package:texnomart/data/source/remote/response/detail_response/detail_responce.dart';
import 'package:texnomart/data/source/remote/response/products_all_ommabop/products_all_category.dart';
import 'package:texnomart/data/source/remote/response/res_hit_products/res_hit_products.dart';
import 'package:texnomart/data/source/remote/response/res_menu_catalog/catalog_menu.dart';
import 'package:texnomart/data/source/remote/response/res_new_brands/res_new_brands.dart';
import 'package:texnomart/data/source/remote/response/res_slider/slider_resoponse.dart';
import 'package:texnomart/data/source/remote/response/products_all_ommabop/products_all_category.dart';
import 'package:texnomart/data/source/remote/response/res_special_brends/res_special_brends.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/domain/repo/repo.dart';
import '../data/source/remote/response/res_special_category/res_special_category.dart';
import '../di/di.dart';

class RepoImpl extends Repo {
  final apiService = diDio<ApiService>();

  @override
  Future<SliderDataResponse> getSliderData() async {
    try {
      final SliderDataResponse = await apiService.getSliderResponse();
      return SliderDataResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<SpecialCategories> getSpecialCategories() async {
    try {
      final specialCategoryResponse = await apiService.getSpecialCategory();
      return specialCategoryResponse;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<SpecialBrends> getSpecialBrands() async {
    try {
      final specialBrands = await apiService.getSpecialBrends();
      return specialBrands;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<List<ProductParam>> getNewProducts() async {
    List<ProductParam> productParamList = [];
    try {
      final newProduct = await apiService.getNewProducts();
      int comingData = newProduct.data.data.length ?? 0;
      List<NewProducts3> initialList = newProduct.data.data ?? [];
      print("Future<List<ProductParam>> getNewProducts: ${initialList.length}");
      for (int i = 0; i < comingData; i++) {
        var data = Convertor.fromNewProductToProductParam(initialList[i]);
        productParamList.add(data);
      }
      return productParamList;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<List<ProductParam>> getHitProducts() async {
    List<ProductParam> convertedList= [];
    try {
      final hitProducts = await apiService.getHitproducts();
      var length = hitProducts.data.data.length??0;
      List<HitProducts3> comingList = hitProducts.data.data??[];
      for(int i = 0; i < length; i++){
        var data = Convertor.fromHitToProductParam(comingList[i]);
        convertedList.add(data);
      }
      return convertedList;
    } on DioException {
      rethrow;
    }
  }


  @override
  Future<List<ProductParam>> getOmmabopCategory(String category) async {
    List<ProductParam> convertedList= [];
    try {
      final getOmmabop = await apiService.getOmmabopCategory(category: category);
      var length = getOmmabop.data?.products?.length??0;
      List<ProductsOmmabop> products = getOmmabop.data?.products??[];
      for(int i = 0; i < length; i++){
        var data = Convertor.fromProductsOmmabopToParam(products[i]);
        convertedList.add(data);
      }
      return convertedList;
    } on DioException {
      rethrow;
    }
  }


  @override
  Future<ProductParam> detailProductResponse(String id) async {
    try {
      final detailItemResponse =
          await apiService.getProductDetail(id: id.toString());

      ProductParam convertedData = Convertor.fromGetDetailToParam(detailItemResponse?.data?.data);

      return convertedData;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<CatalogMenu> getCatalogMenu() async {
    try {
      final getCatalogMenu = await apiService.getCatalogs();
      return getCatalogMenu;
    } on DioException {
      rethrow;
    }
  }
}
