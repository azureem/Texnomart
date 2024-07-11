
import 'package:texnomart/data/source/remote/response/res_new_brands/res_new_brands.dart';
import 'package:texnomart/data/source/remote/response/res_slider/slider_resoponse.dart';
import 'package:texnomart/data/source/remote/response/res_special_category/res_special_category.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import '../../data/source/remote/response/detail_response/detail_responce.dart';
import '../../data/source/remote/response/products_all_ommabop/products_all_category.dart';
import '../../data/source/remote/response/res_hit_products/res_hit_products.dart';
import '../../data/source/remote/response/res_menu_catalog/catalog_menu.dart';
import '../../data/source/remote/response/res_special_brends/res_special_brends.dart';
abstract class Repo{
Future<SliderDataResponse> getSliderData();
Future<SpecialCategories> getSpecialCategories();
Future<SpecialBrends> getSpecialBrands();
Future<List<ProductParam>> getNewProducts();
Future<List<ProductParam>> getHitProducts();
Future<ProductParam> detailProductResponse(String id);
Future<List<ProductParam>>getOmmabopCategory(String category);
Future<CatalogMenu>getCatalogMenu();
}