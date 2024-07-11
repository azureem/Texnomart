import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../catalog/catalog_bloc.dart';
import '../../catalog/catalog_screen.dart';
import '../../home/home_widgets/home_details/paddings.dart';

Widget basketEmpty (BuildContext context){
  return Center(
    child: Column(
      children: [
        verticalSpace(250.0),
        Image.asset('assets/images/savatik.png', width: 68, height: 68,),
        verticalSpace(24.0),
        Text('Savatda hali hech narsa yoq',
          style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),),
        verticalSpace(24.0),

        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
                BlocProvider(
                  create: (context) => CatalogBloc()..add(GetCatalogMenuEvent()),
                  child: CatalogScreen(),
                )));
          },
          child: Container(
            width: 250.0,
            height: 48.0,
            decoration: BoxDecoration(
                color: Color(0xffffba08),
                borderRadius: BorderRadius.circular(8.0)
            ),
            child: Center(child: Text("Harid qilishga o'ting",
              style: TextStyle(color: Colors.black, fontSize: 18.0),)),
          ),
        )
      ],
    ),
  );
}