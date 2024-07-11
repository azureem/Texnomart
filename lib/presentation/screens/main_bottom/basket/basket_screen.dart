import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/presentation/items/item_sale/item_sale.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_widgets/basket_empty.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_widgets/calculator.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_widgets/get_basket_products.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({super.key});

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  SumCalculator calculatorData = SumCalculator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Color(0xffffba08),
        title: Text("Savatcha"),
      ),
      body: SingleChildScrollView(
        child: BlocConsumer<BasketBloc, BasketState>(
          listener: (context, state) {
            print('state list size -> ${state.basketList.length}');
          },
          builder: (context, state) {
            if (state.basketList.isEmpty) {
              return basketEmpty(context);
            } else {
              return Column(
                children: [
                  getBasketProduct(state.basketList, (int deletedItem) {
                    context
                        .read<BasketBloc>()
                        .add(DeleteProductInBasketEvent(deletedItem));
                    context.read<BasketBloc>().add(GetProductsInBasketEvent());
                  }, (ProductParam data) {
                    context
                        .read<BasketBloc>()
                        .add(AddToFaveEvent(state.basketList, data.id));
                  }, (dataPlus) {
                    context
                        .read<BasketBloc>()
                        .add(CalculationClickEvent('p', dataPlus.id));
                    print("plus ishladi");
                    context.read<BasketBloc>().add(GetProductsInBasketEvent());
                    setState(() {
                      calculatorData.addValue(dataPlus.price);
                    });

                  },

                          (dataMinus) {
                    context
                        .read<BasketBloc>()
                        .add(CalculationClickEvent('m', dataMinus.id));


                    print("minus ishladi");
                    context.read<BasketBloc>().add(GetProductsInBasketEvent());
                    setState(() {
                      calculatorData.minusValue(dataMinus.price);
                    });
                  }
                      ),
                  verticalSpace(12.0),

                  calculator(state.basketList.length.toString(),
                      moneyFormat(calculatorData.getSumAsString()),
                      moneyFormat(calculatorData.getSumAsString())),
                  verticalSpace(150.0),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

class SumCalculator {
  int sum = 0;

  void addValue(int value) {
    sum += value;
  }

  void minusValue(int value) {
    sum -= value;
  }


  String getSumAsString() {
    return sum.toString();
  }
}
