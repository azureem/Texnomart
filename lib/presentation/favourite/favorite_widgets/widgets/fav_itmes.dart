import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/presentation/favourite/favorite_widgets/fav_bloc.dart';

import '../../../../domain/basket_model/ProductParam.dart';
import '../../../items/item_sale/item_sale.dart';
import '../../../screens/detail/detail_bloc.dart';
import '../../../screens/detail/detail_screen.dart';
import '../../../screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import '../../favourite_screen.dart';

Widget getFavList(
    List<ProductParam> newProductList,
    bool isLoading,
    Function(ProductParam data) addToBasket,
    Function(ProductParam data) addToFave,
  ) {
  return isLoading
      ? Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(
              width: 160,
              height: 300,
            ),
          ),
        )
      : ListView.builder(
          shrinkWrap: true,
          itemCount: newProductList.length,
          itemBuilder: (context, index) {
            ProductParam? data = newProductList[index];
            return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => DetailBloc()
                          ..add(GetItemDetailEvent(id: data.id ?? 0)),
                        child: DetailScreen(),
                      ),
                    ),
                  );
                },
                child: itemSaleOmma(
                  context,
                  data,
                  (data) {
                    addToBasket(data);
                  },
                  (data) {
                    addToFave(data);
                  },

                ));
          },
        );
}

Widget itemSaleOmma(
  BuildContext context,
  ProductParam data,
  Function(ProductParam) addToBasket,
  Function(ProductParam) addDataToFave,

) {
  // void showSnackBarMessage(String message) {
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Row(
  //         children: [
  //           Expanded(
  //             child: Text(
  //               message,
  //               style: TextStyle(fontSize: 14.0),
  //             ),
  //           ),
  //           SizedBox(width: 4.0),
  //           TextButton(
  //             onPressed: () {
  //               Navigator.pushReplacement(
  //                 context,
  //                 MaterialPageRoute(
  //                     builder: (context) => BlocProvider(
  //                           create: (context) => FavBloc()..add(LoadFavEvent()),
  //                           child: FavouriteScreen(),
  //                         )),
  //               );
  //             },
  //             child: Text(
  //               'Korsatish',
  //               style: TextStyle(color: Color(0xffffba08)),
  //             ),
  //           ),
  //         ],
  //       ),
  //       duration: Duration(seconds: 3),
  //       behavior: SnackBarBehavior.floating,
  //       shape:
  //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  //       // Optional: Add rounded corners
  //       backgroundColor: Colors.black, // Optional: Customize background color
  //     ),
  //   );
  // }

  return Container(
    height: 200,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Color(0xFFf2f2f2),
          width: 1.0,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                    child: Image.network(data.img),
                  )),
                  Positioned(
                      top: 12,
                      right: 6,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withAlpha(80),
                            borderRadius: BorderRadius.circular(45),
                            border:
                                Border.all(width: 1, color: Color(0xFFf2f2f2))),
                      )),
                  Positioned(bottom: 0.0, left: 8.0, child: saleItem())
                ],
              )),
          Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          data.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 16.0, height: 0),
                        ),
                        verticalSpace(8.0),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_rounded,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              size: 16,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              size: 16,
                              color: Colors.grey,
                            ),
                            horizontalSpace(4.0),
                            Text(
                              '0',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        verticalSpace(8.0),
                        verticalSpace(4.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: loanItem24(data.price.toString()),
                        ),
                        verticalSpace(4.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: loanItem12(data.price.toString()),
                        ),
                        verticalSpace(16.0),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Row(
                            children: [
                              Text(
                                moneyFormat(data.price.toString()),
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              horizontalSpace(2.0),
                              Text(
                                '  som',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              verticalSpace(8.0),
                            ],
                          ),
                        ),
                        verticalSpace(4.0),
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withAlpha(80),
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(width: 1, color: Color(0xFFf2f2f2))),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/images/comparison.png', width: 14.0, height: 14.0,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      onTap: () {
                        addDataToFave(data);
                        String message = data.isFav
                            ? 'Mahsulot olib tashlandi'
                            : 'Mahsulot sevimlilarda';
                        //showSnackBarMessage(message);
                      },
                      child: Icon(
                        data.isFav ? Icons.favorite : Icons.favorite_border,
                        color: data.isFav ? Colors.black : Colors.black87,
                        size: 16.0,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8.0,
                    bottom: 8.0,
                    child: Container(
                      width: 42,
                      height: 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          border:
                              Border.all(width: 2, color: Color(0xffffba08))),
                      child: InkWell(
                        onTap: () {
                          addToBasket(data);
                        },
                        child: Center(
                          child: Icon(
                              data.isCheck
                              ? Icons.done_all
                              : Icons.shopping_cart_outlined),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    ),
  );
}

Widget loanItem12(String loan12) {
  return Container(
    height: 18.0,
    //width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xffffeaae),
      borderRadius: BorderRadius.circular(32.0),
    ),
    child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(moneyFormat(loan12), style: TextStyle(fontSize: 12.0)),
          Text(
            ' som / 0-0-2',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          //buttonBasket()
        ],
      ),
    ),
  );
}

Widget loanItem24(String loan24) {
  return Container(
    height: 20.0,
    //width: double.infinity,
    decoration: BoxDecoration(
      color: Color(0xFFf2f2f2),
      borderRadius: BorderRadius.circular(32.0),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 2.0, right: 2.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(moneyFormat(loan24), style: TextStyle(fontSize: 14.0)),
            Text(
              ' somdan / 24 oy',
              style: TextStyle(color: Colors.black, fontSize: 12.0),
            ),
            //buttonBasket()
          ],
        ),
      ),
    ),
  );
}

Widget saleItem() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0), color: Color(0xFF38b000)),
    child: Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '0-0-12',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
        ],
      ),
    ),
  );
}
