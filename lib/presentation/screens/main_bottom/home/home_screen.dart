import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/data/source/remote/response/res_slider/slider_resoponse.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_brands.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/get_all_see.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/paddings.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_details/text_constructor.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_hit_products.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_new_products.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_widgets/home_specials.dart';

import '../../../../domain/basket_model/ProductParam.dart';
import '../../../../utils/status.dart';
import 'home_widgets/home_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xffffba08),
    ));
    return SafeArea(
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/tech_logo.png',
                      width: 170.0,
                      height: 180.0,
                    )
                  ],
                ),
                backgroundColor: Color(0xffffba08),
                centerTitle: true,
              ),

              SliverAppBar(
                backgroundColor: Color(0xffffba08),
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    alignment: Alignment.center,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    // padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    width: double.infinity,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: 'Sotib olish',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 18.0),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                      onChanged: (value) {
                        // Handle search logic here
                      },
                    ),
                  ),
                ),
              ),

              //  verticalSpace(6.0),

              getHomeSliderItem(
                  state.sliderList, state.sliderStatus == Status.initial,
                  (index) {
                setState(() {
                  currentPage = index;
                });
              }),

              SliverToBoxAdapter(
                child: buildCarouselIndicator(state.sliderList),
              ),
              getVerticalSpace(4),

              getBrandsItem(
                  state.brandList, state.brandStatus == Status.initial),
              getVerticalSpace(4),

              getAllSee(context),

              getVerticalSpace(4),

              getSpecialCategoryItem(state.specialCategoryList,
                  state.popularStatus == Status.initial),

              customTextBold('Yangi mahsulotlar', 18.0),

              getVerticalSpace(4.0),

              getVerticalSpace(4.0),

              getNewProductsItem(context, state.newProductList,
                  state.newProductList == Status.loading, (ProductParam data) {
                print("icon is clicked inside screen ${data.id}");
                context.read<HomeBloc>().add(AddToFavoriteNewEvent(state.newProductList, data.id));
             //   context.read<HomeBloc>()..add(LoadAllDataEvent());
              }),

              getVerticalSpace(12.0),

              customTextBold('Hit mahsulotlar', 18.0),

              getHitProductsItem(state.hitProductList,
                  state.hitProductStatus == Status.initial, context, (ProductParam data){
                    context.read<HomeBloc>().add(AddToFavoriteHitEvent(state.newProductList, data.id));
                 //   context.read<HomeBloc>()..add(LoadAllDataEvent());

                  })
            ],
          );
        },
      ),
    );
  }

  buildCarouselIndicator(List<InnerDataSlider> sliderList) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < sliderList.length; i++)
          Container(
            height: i == currentPage ? 10 : 6,
            width: i == currentPage ? 10 : 6,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: i == currentPage ? Colors.black54 : Colors.black12,
                shape: BoxShape.circle),
          )
      ],
    );
  }
}
