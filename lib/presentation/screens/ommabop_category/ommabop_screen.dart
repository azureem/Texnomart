import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/navigator/navigator_bloc/navigator_bloc.dart';
import 'package:texnomart/presentation/screens/ommabop_category/ommabop_bloc.dart';
import 'package:texnomart/presentation/screens/ommabop_category/ommabop_widget/filter_widget.dart';
import 'package:texnomart/presentation/screens/ommabop_category/ommabop_widget/get_ommabop_list.dart';
import 'package:texnomart/utils/status.dart';

import '../../../domain/basket_model/ProductParam.dart';
import '../main_bottom/basket/basket_bloc.dart';

class OmmabopScreen extends StatefulWidget {
  final String title;

  const OmmabopScreen({super.key, required this.title});

  @override
  State<OmmabopScreen> createState() => _OmmabopScreenState();
}

class _OmmabopScreenState extends State<OmmabopScreen> {
  bool isAdd = false;
bool isAddBasket = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0xffffba08),
          leading: Icon(
            Icons.arrow_back,
            size: 24.0,
            color: Colors.black,
          ),
          title: Text(widget.title,
              style: TextStyle(color: Colors.black, fontSize: 18.0))),
      body: BlocConsumer<OmmabopBloc, OmmabopInitialState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isAdd) {
            isAdd = true;
          }
          if(state.isIn){
            isAddBasket = true;
          }
          return SingleChildScrollView(
            child: Column(
              children: [

                filterWidget(),
                getOmmabopList(
                    state.ommabopCategoryLs,
                    state.slugStatus == Status.loading,

                    (ProductParam toBasketData) {
                  context.read<OmmabopBloc>().add(AddProductToBasketEvent(state.ommabopCategoryLs, toBasketData.id));
                  context.read<NavigatorBloc>().add(LoadNavigateEvent());
                 context.read<BasketBloc>().add(GetProductsInBasketEvent());
                },
                        (ProductParam toFaveData) {
                  context.read<OmmabopBloc>().add(AddToFavoriteHitEvent(state.ommabopCategoryLs, toFaveData.id));
                }, isAdd, isAddBasket)
              ],
            ),
          );
        },
      ),
    );
  }
}
