import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

Widget getDetailCarouselItem(
    List<String> detailImageList, bool isLoading, Function(int index) pageChange) {
  return isLoading
      ?  Container(
    height: double.infinity,
    child: Center(
      child: CircularProgressIndicator(),
    ),
  )
      : Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      height: 250,
      color: Colors.white,
      child: CarouselSlider(
        items: detailImageList.map((i) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              i ?? "",
              fit: BoxFit.cover, // Ensure images fill the container
            ),
          );
        }).toList(),
        options: CarouselOptions(
          initialPage: 0,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 2),
          enlargeCenterPage: true,
          onPageChanged: (value, _) {
            pageChange(value);
          },
        ),
      ),
    ),
  );
}
