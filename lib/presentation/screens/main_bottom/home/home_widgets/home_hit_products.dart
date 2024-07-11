import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/presentation/screens/detail/detail_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/hit_item.dart';
import '../../../../../data/source/remote/response/res_hit_products/res_hit_products.dart';
import '../../../detail/detail_screen.dart';

Widget getHitProductsItem(List<ProductParam> hitProductList, bool isLoading, BuildContext context,Function(ProductParam data) addProductParam) {
  return SliverToBoxAdapter(
      child: isLoading
          ? Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey,
        child: SizedBox(
          height: 200,
          width: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                width: 180,
                margin: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              );
            },
          ),
        ),
      )
          : SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: hitProductList.length,
                itemBuilder: (context, index) {
                  ProductParam? data = hitProductList[index];
                  int loan24 = hitProductList[index].price ?? 0;
                  double lloan24 = loan24 / 24;

                  int loan12 = hitProductList[index].price ?? 0;
                  double lloan12 = loan24 / 12;
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                    create: (context) => DetailBloc()
                                      ..add(GetItemDetailEvent(id: data.id)),
                                    child: DetailScreen(),
                                  )));
                    },
                    child: itemHits(
                        context,
                        data.img,
                        data.title ,
                        data.price.toString() ,
                        data.price.toString() ,
                        data.price.toString() ,
                        data,
                            (data){
                          addProductParam(data);
                        }),
                  );
                },
              ),
            ));
}
