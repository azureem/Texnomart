import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customText(
    String text,
    double size
    ){
  return SliverToBoxAdapter(child: Text(text, style: TextStyle(fontSize: size,  ),));

}

Widget customTextBold(
    String text,
    double size
    ){
  return SliverToBoxAdapter(child: Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Text(text, style: TextStyle(fontSize: size, fontWeight: FontWeight.bold  ),),
  ));

}


Widget customTextBoldOriginal(
    String text,
    double size
    ){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Text(text, style: TextStyle(fontSize: size, fontWeight: FontWeight.bold  ),),
  );

}

Widget customTextRasmiy(
    String text,
    double size
    ){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Text(text, style: TextStyle(fontSize: size, fontWeight: FontWeight.bold, color: Colors.white  ),),
  );

}


Widget customTextOriginal(
    String text,
    double size
    ) {
  return Text(text, style: TextStyle(fontSize: size,),);
}
  Widget customTextOriginalGreen(
      String text,
      double size
      ){
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(text, style: TextStyle(fontSize: size, color: Colors.green, fontWeight: FontWeight.bold ),),
    );

  }