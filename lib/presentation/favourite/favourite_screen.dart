import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/presentation/favourite/favorite_widgets/fav_bloc.dart';
import 'package:texnomart/presentation/favourite/favorite_widgets/widgets/fav_empty.dart';
import 'package:texnomart/presentation/favourite/favorite_widgets/widgets/fav_itmes.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';

import '../../../../data/source/local/ProductModel/favourite_model.dart';
import '../../utils/status.dart';
import '../screens/main_bottom/basket/basket_bloc.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  bool isAdd = false;
  List<FavouriteModel> favorites =
      Hive.box<FavouriteModel>('Favourites').values.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          leading: Icon(Icons.arrow_back, color: Colors.black,),
          backgroundColor: Color(0xffffba08),
          title: Text('Sevimlilar'),
        ),
        body: BlocConsumer<FavBloc, FavInitial>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state.isIn) {
                isAdd = true;
              }

              if (state.list.isEmpty) {
                return favEmpty(context);
              }
              else {
                return getFavList(state.list, state.favStatus == Status.loading,
                        (ProductParam data) {
                      context.read<FavBloc>().add(
                          AddProductToBasketEvent(state.list, data.id));
                      print("CLICKE DESIRED ITEM${data.title}");
                     // context.read<BasketBloc>().add(GetProductsInBasketEvent());
                    },

                      (ProductParam data) {
                      context.read<FavBloc>().add(
                          AddToFavoriteNewEvent(state.list, data.id));
                      setState(() {

                      });
                    }, );
              }
            })

    );
  }
}
