import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../data/source/remote/response/res_special_brends/res_special_brends.dart';
import '../../../../items/item_brends/special_brands.dart';

Widget getBrandsItem(List<SpecialBrendsData2> brandList, bool isLoading) {
  return SliverToBoxAdapter(
    child: isLoading
        ? SizedBox(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 90,
                      height: 80,
                      decoration:BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12.0)
                      )
                    ),
                  );
                },
              ),
            ),
          ),
        )
        : SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: brandList.length,
              itemBuilder: (context, index) {
                return brandItem(brandList[index].image ?? '');
                //
              },
            ),
          ),
  );
}
