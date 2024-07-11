


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/text_constructor.dart';

Widget calculator(
    String nechtaMahsulot,
    String primaryPrice,
    String secondaryPrice

    ){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: double.infinity,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(width: 1, color: Colors.black12)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(24.0),
            customTextBoldOriginal("Jami", 21.0),
            verticalSpace(8.0),
            Row(
              children: [
                customTextOriginal('$nechtaMahsulot ta mahsulot', 16.0),
                Spacer(),
                customTextBoldOriginal("$secondaryPrice so'm", 16.0),

                horizontalSpace(8.0)
              ],
            ),
            Row(
              children: [
                customTextOriginal("To'lash uchun", 16.0),
                Spacer(),
                customTextBoldOriginal("$secondaryPrice so'm", 24.0),
                horizontalSpace(8.0)
              ],
            ),

            Spacer(),
            Container(
              decoration: BoxDecoration(color: Color(0xffffba08),
                borderRadius: BorderRadius.circular(8.0)
              ),

              height: 48.0,
              width: double.infinity,
              child: Center(child: customTextOriginal("Xaridni rasmiylashtirish", 16.0)),
            ),
            verticalSpace(24.0)

          ],
        ),
      ),
    ),
  );
}