import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget detailAppBAr(){
  return AppBar(
    backgroundColor: Color(0xffffba08),
    title: const Row(
      children: [
        Expanded(
          child: Row(children: []),
          flex: 2,
        ),
        Expanded(
          flex:1,
          child: Row(children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.share),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.scale_outlined),
            ),
            Icon(Icons.favorite_border_outlined)
          ]),

        ),
      ],
    ),
  );
}