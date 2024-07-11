import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget brandItem(
  String img,
) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: Column(
      children: [
        Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: BorderSide(
                color: Colors.black12,
                width: 1.0,
              ),
            ),
            child: Container(
                color: Colors.white,
                height: 48,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Image.network(img,)),
                ))),
      ],
    ),
  );
}
