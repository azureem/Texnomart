import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/presentation/screens/detail/detail_bloc.dart';
import 'package:texnomart/presentation/screens/detail/detail_screen.dart';

import '../../../../items/item_sale/item_sale.dart';

Widget getNewProductsItem(
    BuildContext context,
    List<ProductParam> newProductList,
    bool isLoading,
    Function(ProductParam data) addProductParam) {

  return SliverToBoxAdapter(
      child: isLoading
          ? Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: const SizedBox(
                  width: 160,
                  height: 280,
                ),
              ))
          : SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: newProductList.length,
                itemBuilder: (context, index) {
                  ProductParam data = newProductList[index];
                  int loan24 = newProductList[index].price ?? 0;
                  double lloan24 = loan24 / 24;
                  int loan12 = newProductList[index].price ?? 0;
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
                    child: itemSale(
                        context,
                        data.img,
                        data.title,
                        data.price.toString(),
                        data.price.toString(),
                        data.price.toString(),
                        data.id,
                        data,
                        (data){
                          addProductParam(data);
                        }

                    ),
                  );
                },
              ),
            ));
}
