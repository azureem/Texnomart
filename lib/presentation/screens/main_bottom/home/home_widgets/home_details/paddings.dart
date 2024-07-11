
import 'package:flutter/cupertino.dart';

Widget getVerticalSpace(double size){
  return SliverToBoxAdapter(child: SizedBox(height: size,),);
}
Widget getHorizontalSpace(double size){
  return SliverToBoxAdapter(child: SizedBox(width: size,),);
}


Widget verticalSpace(double size){
  return SizedBox(height: size,);
}
Widget horizontalSpace(double size){
  return SizedBox(width: size,);
}