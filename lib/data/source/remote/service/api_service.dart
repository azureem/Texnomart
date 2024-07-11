import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:texnomart/data/source/remote/response/res_slider/slider_resoponse.dart';
import '../response/detail_response/detail_responce.dart';
import '../response/products_all_ommabop/products_all_category.dart';
import '../response/res_hit_products/res_hit_products.dart';
import '../response/res_menu_catalog/catalog_menu.dart';
import '../response/res_new_brands/res_new_brands.dart';
import '../response/res_special_brends/res_special_brends.dart';
import '../response/res_special_category/res_special_category.dart';
part 'api_service.g.dart';
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('web/v1/content/sliders')
  Future<SliderDataResponse> getSliderResponse();

  @GET('web/v1/home/special-categories')
  Future<SpecialCategories> getSpecialCategory();

  @GET('web/v1/home/special-brands')
  Future<SpecialBrends> getSpecialBrends();
  
  @GET('web/v1/home/special-products?type=new_products')
  Future<NewProducts> getNewProducts();

  @GET('web/v1/home/special-products?type=hit_products')
  Future<HitProducts> getHitproducts();

  @GET("web/v1/product/detail")
  Future<DetailResponse> getProductDetail({
    @Query("id") required String id,
  });

  @GET("common/v1/search/filters")
  Future<ProductAllCategory> getOmmabopCategory({
    @Query("category_all") required String category,
    @Query("sort") String? sort,
    @Query("page") String? number,
  });

  @GET('web/v1/header/popup-menu-catalog')
  Future<CatalogMenu> getCatalogs();
}


