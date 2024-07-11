import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget itemProduct(
    String img,
    String title,
    String loan,
    String canceledPrice,
    String actualPrice,) {
  return Container(
    height: 600,
    width: 170 ,
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xE6E6E6E6)),
                    child: Center(child: Padding(
                      padding: const EdgeInsets.only(left: 6.0, right: 6.0, top:2.0, bottom: 2.0),
                      child: Image.asset(img),
                    )),
                  ),
                  Positioned(
                      top: 16,
                      right: 8,
                      child: Image.asset(
                        'assets/images/likes.png',
                        width: 26.0,
                        height: 26.0,
                      ))
                ],
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12.0,),
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16.0, height: 0),
                    ),
                 SizedBox(height: 4.0,),

                 Padding(
                   padding: const EdgeInsets.only(left: 1.0),
                   child: loanItem(loan),
                 ),
                    SizedBox(height: 4.0,),
                    RichText(
                      text: TextSpan(
                          text: actualPrice,
                          style: TextStyle(fontSize: 14.0,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough)),
                    ),
                    Text(
                      actualPrice,
                      style: TextStyle(fontSize:14.0,color: Colors.red),
                    ),
                    SizedBox(height: 6.0,),
                    Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: buttonBasket(),
                    ),
                    SizedBox(height: 8.0,)
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}

Widget loanItem(String loan) {
  return Container(
    height: 20.0,
    //width: double.infinity,
    decoration: BoxDecoration(
        color: Color(0xffffeaae),
        borderRadius: BorderRadius.circular(32.0),
        border: Border.all(
          width: 1.0,
          color: Color(0xffffb703),
        )),
    child: Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'от ',
            style: TextStyle(color: Colors.black),
          ),
          Text(loan, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
          Text(
            ' сум/мес',
            style: TextStyle(color: Colors.black),
          ),
          //buttonBasket()
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
          padding: const EdgeInsets.symmetric( vertical: 6),
          child: Text(
                'В корзину',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
        )),
  );
}
