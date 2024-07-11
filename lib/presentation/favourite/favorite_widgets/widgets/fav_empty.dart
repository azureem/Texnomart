import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_screen.dart';

import '../../../screens/main_bottom/home/home_widgets/home_details/paddings.dart';

Widget favEmpty(BuildContext context) {
  return Center(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.0),
      child: Column(
        children: [
          verticalSpace(250.0),
          Image.asset(
            'assets/images/fav_emty.png',
            width: 110,
            height: 110,
          ),
          Text(
            "Sevimlilar ro'yhati bo'sh",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
          verticalSpace(18.0),
          Text(
            "Sevimli mahsuotlaringizni keyinroq",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0),
          ),
          Text(
            "ko'rish yoki sotib olish uchun ularni ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          Text(
            "sevimlilaringizga qo'shing",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
            ),
          ),
          verticalSpace(18.0),


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
                  borderRadius: BorderRadius.circular(8.0)),
              child: Center(
                  child: Text(
                    "Mahsulotlarni qo'shish",
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  )),
            ),
          )
        ],
      ),
    ),
  );
}
