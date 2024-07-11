import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:texnomart/presentation/screens/ommabop_category/ommabop_bloc.dart';
import 'package:texnomart/presentation/screens/ommabop_category/ommabop_screen.dart';

import '../../../../../data/source/remote/response/res_special_category/res_special_category.dart';
import '../../../../items/special_category/special_item.dart';

Widget getSpecialCategoryItem(List<SpecialInnerData> specialCategoryList, bool isLoading) {
  return SliverToBoxAdapter(
    child: isLoading
        ? Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey,
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              width: 80,
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
            );
          },
        ),
      ),
    )
        : SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specialCategoryList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BlocProvider(
                  create: (context) => OmmabopBloc()..add(GetOmmabopEvent(slug: specialCategoryList[index]?.slug ?? "")),
                child: OmmabopScreen(title: specialCategoryList[index].title ?? ""),
                )),
              );
            },
            child: specialItem(
              specialCategoryList[index].image ?? "",
              specialCategoryList[index].title ?? "",
            ),
          );
        },
      ),
    ),
  );
}
