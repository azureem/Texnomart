import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:texnomart/presentation/items/item_sale/item_sale.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/text_constructor.dart';

Widget buyItem(String price, VoidCallback onPressed, bool isAdd){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    width: double.infinity,
    //height: 180.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      border: Border.all(color: Colors.black12, width: 1.0)
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          verticalSpace(16.0),
          Row(
            children: [
              customTextBoldOriginal(moneyFormat(price), 32.0),
              customTextBoldOriginal('som', 32.0),
            ],
          ),
          verticalSpace(8.0),
          btnBuy(onPressed, isAdd),
          verticalSpace(16.0),
        ],
      ),
    ),

  );
}
Widget btnBuy(VoidCallback onPressed, bool isAdd) {
  Color containerColor = isAdd ? Colors.white : Color(0xffffba08);
  Color borderColor = isAdd ? Colors.yellow : Colors.transparent;

  return InkWell(
    onTap: onPressed,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      width: double.infinity,
      height: 52.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: containerColor,
        border: Border.all(color: borderColor, width: 2.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            isAdd ?
              Icons.shopping_cart: Icons.add_shopping_cart),
          SizedBox(width: 8.0),
          Text(isAdd?
            "Qo'shildi":"Savatchaga qoshish",
            style: TextStyle(color: Colors.black, fontSize: 14.0),
          ),
        ],
      ),
    ),
  );
}