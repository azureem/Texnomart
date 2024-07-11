import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/presentation/screens/detail/detail_bloc.dart';

import '../../../../domain/basket_model/ProductParam.dart';
import '../../../items/item_sale/item_sale.dart';
import '../../detail/detail_screen.dart';
import 'item_ommabop.dart';

Widget getOmmabopList(
    List<ProductParam> newProductList,
    bool isLoading,
    Function(ProductParam data) addToBasket,
    Function(ProductParam data) addToFave,
    bool isAdd,
    bool isIn
    ) {
  return isLoading
      ? Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: SizedBox(width: 160, height: 300),
    ),
  )
      : GridView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 32.0,
      mainAxisSpacing: 12.0,
      childAspectRatio: 3 / 6,
    ),
    itemCount: newProductList.length,
    itemBuilder: (context, index) {
      ProductParam data = newProductList[index];
      return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => DetailBloc()..add(GetItemDetailEvent(id: data.id ?? 0)),
                child: DetailScreen(),
              ),
            ),
          );
        },
        child: itemSaleOmma(
          context,
          data,
            addToBasket,
          addToFave,
          isAdd, isIn
        ),
      );
    },
  );
}
