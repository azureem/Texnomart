import 'package:flutter/material.dart';
import 'package:texnomart/presentation/items/item_sale/item_sale.dart';

import '../../../../../domain/basket_model/ProductParam.dart';

Widget getBasketProduct(
  List<ProductParam> productParams,
  Function(int) onDeletePressed,
  Function(ProductParam data) addToFave,
  Function(ProductParam data1) onPlus,
  Function(ProductParam data2) onMinus,
) {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: productParams.length,
    itemBuilder: (context, index) {
      ProductParam product = productParams[index];
      return InkWell(
        onTap: () {},
        child: lala(
          product.id,
          product.img,
          product.title,
          product.price.toString(),
          (int id) {
            onDeletePressed(id);
          },
          (data) {
            addToFave(data);
          },



          (data){
            onPlus(data);
          },
          (data){
            onMinus(data);
          },
          product,
        ),
      );
    },
  );
}

bool isCheck = true;

Widget lala(
    int id,
    String img,
    String title,
    String price,
    Function(int) onPressed,
    Function(ProductParam) addToFave,
    Function(ProductParam data1) onPlus,
    Function(ProductParam data1) onMinus,
    ProductParam data) {
  var count = data.count+1;
  bool isFav = data.isFav;
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.network(
              img,
              height: 100,
              width: 100,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        maxLines: 2,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        // context.read<BasketBloc>().add(OnClickCheckBox(index: widget.index));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: isCheck
                            ? Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xfffdc202),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.black,
                                  size: 18,
                                ),
                              )
                            : Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Text(
                  moneyFormat(data.price.toString()),
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: const EdgeInsets.all(2),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  // child: Text(
                  //   "${(price / 24).toString().toValue()} so'mdan / 24 oy",
                  //   style: const TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
                  // ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 1, color: Colors.black12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  //context.read<BasketBloc>().add(Decrement(index: widget.index));
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      onMinus(data);
                                    },
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                               Text(
                           count.toString(),
                                // data.count.toString(),
                                style: const TextStyle(fontSize: 16, color: Colors.black),
                               ),
                              GestureDetector(
                                onTap: () {
                                  // context.read<BasketBloc>().add(Increment(index: widget.index));
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: InkWell(
                                    onTap: () {
                                      onPlus(data);
                                    },
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          addToFave(data);
                        },
                        icon: Icon(
                          data.isFav ? Icons.favorite
                              : Icons.favorite_border,
                          color: data.isFav ? Colors.black : Colors.black87,
                          size: 16.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          onPressed(data.id);
                        },
                        icon: const Icon(
                          Icons.delete_outline,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      const Divider(
        thickness: 0.6,
        color: Colors.black12,
      ),
    ],
  );
}

Widget itemBasket(
  String img,
  String title,
  String price,
) {
  return Container(
    padding: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Image.network(
                img,
                fit: BoxFit.cover,
                // Adjust fit based on your image size requirements
                height: 100, // Adjust height as needed
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16.0),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    price,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.0),
            Center(
              child: Checkbox(
                value: true, // Replace with actual checkbox value
                onChanged: (newValue) {
                  // Handle onChanged if needed
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Divider(height: 1.0, color: Colors.grey),
      ],
    ),
  );
}
