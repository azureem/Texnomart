import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/presentation/favourite/favorite_widgets/fav_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';

import '../../../data/source/local/ProductModel/favourite_model.dart';
import '../../../data/source/local/favourite_hive.dart';
import '../../favourite/favourite_screen.dart';

typedef FavoriteToggleCallback = void Function();

Widget itemSale(
    BuildContext context,
    String img,
    String title,
    String loan12,
    String loan24,
    String actualPrice,
    int id,
    ProductParam data,
    Function(ProductParam) addData) {
  void showSnackBarMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Expanded(
              child: Text(
                message,
                style: TextStyle(fontSize: 14.0),
              ),
            ),
            SizedBox(width: 4.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BlocProvider(
                            create: (context) => FavBloc()..add(LoadFavEvent()),
                            child: FavouriteScreen(),
                          )),
                );
              },
              child: Text(
                'Korsatish',
                style: TextStyle(color: Color(0xffffba08)),
              ),
            ),
          ],
        ),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        // Optional: Add rounded corners
        backgroundColor: Colors.black, 
      ),
    );
  }

  return Container(
    height: 350,
    width: 180,
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
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Center(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                    child: Image.network(img),
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
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              addData(data);
                              String message = data.isFav
                                  ? 'Mahsulot olib tashlandi'
                                  : 'Mahsulot sevimlilarda';
                              showSnackBarMessage(message);
                            },
                            child: Icon(
                              data.isFav
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: data.isFav ? Colors.black : Colors.black87,
                              size: 16.0,
                            ),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 48,
                      right: 6,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withAlpha(80),
                            borderRadius: BorderRadius.circular(45),
                            border:
                                Border.all(width: 1, color: Color(0xFFf2f2f2))),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            onTap: () {
                              addData(data);
                            },
                            child: Icon(
                              Icons.balance_outlined,
                              size: 16.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      )),
                  Positioned(bottom: 0.0, left: 8.0, child: saleItem())
                ],
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      title,
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
                      child: loanItem24(loan24),
                    ),
                    verticalSpace(4.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: loanItem12(loan12),
                    ),
                    verticalSpace(16.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Row(
                        children: [
                          Text(
                            moneyFormat(actualPrice),
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
          Text(moneyFormat(loan12), style: TextStyle(fontSize: 14.0)),
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
              style: TextStyle(color: Colors.black, fontSize: 14.0),
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

Widget buttonBasket() {
  return Container(
    height: 32.0,
    width: 96,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0), color: Color(0xffffb703)),
    child: Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        'В корзину',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    )),
  );
}

String moneyFormat(String value) {
  String newStr = "";
  if (value.length <= 3) {
    newStr = value;
  } else if (value.length >= 4 && value.length <= 6) {
    int index = value.length - 3;
    newStr = "${value.substring(0, index)} ${value.substring(index)}";
  } else if (value.length >= 7 && value.length <= 9) {
    int indexFirst = value.length - 6;
    int indexSecond = value.length - 3;
    newStr =
        "${value.substring(0, indexFirst)} ${value.substring(indexFirst, indexSecond)} ${value.substring(indexSecond)}";
  }
  return newStr;
}
