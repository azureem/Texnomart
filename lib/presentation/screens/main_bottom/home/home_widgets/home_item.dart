import 'package:flutter/material.dart';

Widget upgradeItem() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 16.0),
      Text(
        'Приложение может работать быстрее',
        style: TextStyle(
            color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      Text('Пожалуйста, обновите приложение чтобы оно ',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          )),
      Text('работало лучше ',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18.0,
          )),
      SizedBox(height: 16.0,),
      buttonUpgrade()
    ],
  );
}

Widget buttonUpgrade() {
  return Container(
    height: 38.0,
    width: 96,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0), color: Color(0xffffb703)),
    child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            'Обновить',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        )),
  );
}


Widget itemDevice(){
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
      
    ),

  );
}