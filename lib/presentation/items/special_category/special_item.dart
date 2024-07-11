import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget specialItem(String img, String title) {
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
                height: 80,
                width: 80,
                child: Center(child: SvgPicture.network(img)))),
        SizedBox(
          height: 6.0,
        ),
        Align(
            alignment: Alignment.center,
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12.0, height: 0),
            )),
      ],
    ),
  );
}
