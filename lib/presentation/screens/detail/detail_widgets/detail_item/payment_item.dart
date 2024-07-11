
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/text_constructor.dart';

Widget paymentItem(){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Container(
      height: 410,
      width: double.infinity,
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
        border: Border.all(width:1.0,color: Colors.black12)
      ),


      child: Column(
        children: [
          verticalSpace(24.0),
          Row(
            children: [
              customTextBoldOriginal("Tolov variantlari", 18.0),

              Spacer(),
              Icon(Icons.info_outline, color: Colors.black,size: 24.0,),
              horizontalSpace(16.0)

            ],
          ),
          verticalSpace(16.0),
          SizedBox(
            height: 38,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: month.length,
              itemBuilder: (context, index){
                String data = month[index];
                return monthFrame(data);
              }, separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 16.0,);
            },
            ),
          ),
          
          verticalSpace(16.0),
          anor('price'),
          verticalSpace(24.0),
          cards("price"),
          verticalSpace(8.0),
          card2("price")
        ],
      ),
    ),
  );
}

List<String> month = ["0-0-6", "0-0-12", "12 oy", "18 oy", "24 oy"];

Widget monthFrame (
    String month
    ){
  return  Container(
    width: 56,
    height: 28,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(width: 2, color: Color(0xffffba08))
    ),
    child: InkWell(
      onTap: (){

      },
      child: Center(
        child:Text(month, style:  TextStyle(color: Colors.black, fontSize: 18.0),),
      ),
    ),
  );
}
Widget anor(
    String price
    ){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Color(0xffffba08), width: 2)
      ),
      child: Column(
        children: [
          verticalSpace(16.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              children: [
                Image.asset('assets/images/anor.png', width: 100, height: 20,),
                Spacer(),
                Text("oyiga ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
                Text(price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
                Text(" som", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),)
              ],
            ),
          ),
          verticalSpace(16.0),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(width: double.infinity, height: 1, color: Color(0xFFf2f2f2),),
          ),
          verticalSpace(16.0),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                              child: Text("Jami", style: TextStyle(color: Colors.grey, fontSize:18.0 ),)),
                         Row(
                           children: [
                             Text(price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                             Text(" som", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                           ],
                         )
                        ],
                      ),
                    )),
                Expanded(
                  flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.black
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: customTextRasmiy("Rasmiylashtirish", 18.0),
                      ),
                    ),

                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget cards(String price){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Container(
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Color(0xFFf2f2f2), width: 1)
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Row(
          children: [
            Image.asset('assets/images/tbc.png', width: 100, height: 56,),
            Spacer(),
            Text("oyiga ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
            Text(price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
            Text(" som", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),)
          ],
        ),
      ),
    ),
  );
}

Widget card2(String price){
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Container(
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: Color(0xFFf2f2f2), width: 1)
      ),
      child:  Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Row(
          children: [
           Column(children: [
             verticalSpace(14.0),
             Text("Axiom nasiya", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
             Text(" qulay muddatli tolov", style: TextStyle(color: Colors.black, fontSize: 8.0),)
           ],),
            Spacer(),
            Text("oyiga ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
            Text(price, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),),
            Text(" som", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),)
          ],
        ),
      ),
    ),
  );
}