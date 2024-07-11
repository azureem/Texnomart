import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/navigator/navigator_bloc/navigator_bloc.dart';
import 'package:texnomart/presentation/favourite/favorite_widgets/fav_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/bottom/bottom.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_screen.dart';

import '../../../navigator/persistent_navigation_tab.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    openHome();
    super.initState();
  }

  openHome() async {
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => NavigatorBloc()..add(LoadNavigateEvent())),
          BlocProvider(create: (_) => HomeBloc()..add(LoadAllDataEvent())),
          BlocProvider(create: (_) => BasketBloc()..add(GetProductsInBasketEvent())),
          BlocProvider(create: (_) => CatalogBloc()..add(GetCatalogMenuEvent())),
          BlocProvider(create: (_) => FavBloc()..add(LoadFavEvent())),
          //BlocProvider(create: (_) => FavBloc()),
        ],
        child: const myPersistentBottomNavBarDemo()
      )),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffba08),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/texno.png',
                  width: 180,
                  height: 180,
                ),
                SizedBox(height: 8.0),
              ],
            ),
          ),

        ],
      ),
    );
  }


}
