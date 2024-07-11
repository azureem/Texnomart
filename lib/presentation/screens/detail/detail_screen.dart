import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/domain/basket_model/ProductParam.dart';
import 'package:texnomart/navigator/navigator_bloc/navigator_bloc.dart';
import 'package:texnomart/presentation/items/item_sale/item_sale.dart';
import 'package:texnomart/presentation/screens/detail/detail_bloc.dart';
import 'package:texnomart/presentation/screens/detail/detail_widgets/detail_item/buy_item.dart';
import 'package:texnomart/presentation/screens/detail/detail_widgets/detail_item/payment_item.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/text_constructor.dart';
import 'package:texnomart/utils/status.dart';

import 'detail_widgets/detail_image_corousel.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentPage = 0;
  List<String> list = [];
  bool isAdd = false;
  bool isAddFav = false;
  late ProductParam detailItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: BlocBuilder<DetailBloc, DetailState>(
          builder: (context, state) {
            isAddFav = state.isIn;
            return AppBar(
              backgroundColor: Color(0xffffba08),
              title: Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.share),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/comparison.png',
                        width: 22.0, height: 22.0),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     context.read<DetailBloc>().add(AddToFavEvent(data: state.detailItem));
                  //   },
                  //   child: Icon(
                  //       isAddFav ?
                  //       Icons.favorite : Icons.favorite_border),
                  // ),
                ],
              ),
            );
          },
        ),
      ),
      body: BlocConsumer<DetailBloc, DetailState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state.isIn) {
            isAddFav = state.isIn;
          }
          if (state.isAdd) {
            isAdd = true;
          }
          list = state.detailItem?.smallImages ?? [];
          if (state.detailItemStatus == Status.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(8.0),
              getDetailCarouselItem(
                  list ?? [], state.detailItemStatus == Status.loading,
                  (index) {
                setState(() {
                  currentPage = index;
                });
              }),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(width: 55, height: 28, child: saleItem()),
              ),
              buildCarouselIndicator(list ?? []),
              customTextOriginalGreen("Mavjud", 16.0),
              verticalSpace(8.0),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: customTextOriginal(state.detailItem?.title ?? '', 16.0),
              ),
              verticalSpace(16.0),
              buyItem(state.detailItem?.price.toString() ?? '', () {
                context
                    .read<DetailBloc>()
                    .add(AddProductToBasketEvent(data: state.detailItem!));
                context.read<NavigatorBloc>().add(LoadNavigateEvent());
                context.read<BasketBloc>().add(GetProductsInBasketEvent());
              }, isAdd),
              verticalSpace(24.0),
              paymentItem(),
              verticalSpace(56)
            ],
          ));
        },
      ),
    );
  }

  buildCarouselIndicator(List<String> sliderList) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < sliderList.length; i++)
          Container(
            height: i == currentPage ? 10 : 6,
            width: i == currentPage ? 10 : 6,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: i == currentPage ? Colors.black54 : Colors.black12,
                shape: BoxShape.circle),
          )
      ],
    );
  }
}
