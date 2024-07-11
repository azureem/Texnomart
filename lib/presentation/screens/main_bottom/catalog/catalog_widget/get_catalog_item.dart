import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/text_constructor.dart';
import 'package:texnomart/presentation/screens/ommabop_category/ommabop_bloc.dart';
import 'package:texnomart/presentation/screens/ommabop_category/ommabop_screen.dart';

import '../../../../../data/source/remote/response/res_menu_catalog/catalog_menu.dart';

Widget getCatalogItem(List<GetCatalogMenu> catalogList, bool isLoading) {
  return isLoading
      ? Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey!,
    child: ListView.builder(
      itemCount: 25,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
          ),
          title: Container(
            height: 20,
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 8),
          ),
          subtitle: Container(
            height: 16,
            color: Colors.white,
          ),
        );
      },
    ),
  )
      : ListView.builder(
      itemCount: catalogList.length,
      itemBuilder: (context, index) {
        GetCatalogMenu data = catalogList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute
              (builder: (context) =>
                BlocProvider(
                  create: (context) => OmmabopBloc()..add(GetOmmabopEvent(slug: data.slug??"")),
                  child: OmmabopScreen(title: data.name ?? ""),
                )));
          },
          child: rowItem(data.icon.toString(), data.name.toString()),
        );
      });
}

Widget rowItem(String img,
    String title,) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.0),
    height: 56.0,
    child: Row(
      children: [
        SvgPicture.network(img),
        verticalSpace(8.0),
        customTextBoldOriginal(title, 16.0),
        Spacer(),
        Icon(Icons.arrow_forward_ios, size: 18.0, color: Colors.grey,)
      ],
    ),
  );
}
