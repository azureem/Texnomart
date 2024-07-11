import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/text_constructor.dart';

Widget getAllSee(BuildContext context) {
  return SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          customTextBoldOriginal('Ommabop kategoriyalar', 18.0),
          Spacer(),
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    BlocProvider(
                      create: (context) => CatalogBloc()..add(GetCatalogMenuEvent()),
                      child: CatalogScreen(),
                    )));
              },
              child: customTextOriginal('hammasi', 14.0)),
          horizontalSpace(4.0),
          Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 14.0,),
          horizontalSpace(4.0),
        ],
      ),
    ),
  );
}
