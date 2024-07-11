
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';

Widget filterWidget(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12.0),
    height: 56.0,
    child: Row(

      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Image.asset('assets/images/arrows.png', width: 18.0, height: 18.0,),
              horizontalSpace(4.0),
              Text('Ommabopligi', style: TextStyle(fontSize: 18.0),)
            ],
          ),
        ),

        Expanded(
          flex: 1,
          child: Row(
            children: [
             Image.asset('assets/images/filter.png', width: 18.0, height: 18.0,),
              horizontalSpace(4.0),
              Text('Filterlar')
            ],
          ),
        ),

       Image.asset('assets/images/menu.png',  width: 18.0, height: 18.0,)
      ],
    ),
  );
}
