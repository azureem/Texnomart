import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../data/source/remote/response/res_slider/slider_resoponse.dart';

Widget getHomeSliderItem(List<InnerDataSlider> sliderList, bool isLoading, Function(int index) pageChange) {
  return SliverToBoxAdapter(
    child: isLoading
        ? Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey,
      child: SizedBox(
        width: double.infinity,
        height: 150, // Adjust height to match your slider item height
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4, // Adjust the number of shimmer placeholders as needed
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.8, // Example width, adjust as needed
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
            );
          },
        ),
      ),
    )
        : CarouselSlider(
      items: sliderList.map((i) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            i.imageMobileWeb ?? "",
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        initialPage: 0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        enlargeCenterPage: true,
        onPageChanged: (value, _) {
          pageChange(value);
        },
      ),
    ),
  );
}

