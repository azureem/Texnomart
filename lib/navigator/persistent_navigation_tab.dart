import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:texnomart/data/source/local/basket_hive.dart';
import 'package:texnomart/navigator/navigator_bloc/navigator_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/orders/orders_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/profile/profile_screen.dart';

import 'package:badges/badges.dart' as badges;


class myPersistentBottomNavBarDemo extends StatelessWidget {
  const myPersistentBottomNavBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigatorBloc, NavState>(
      listener: (context, state) {

        if(state.bottomNavigationIndex == 1){
          print("POSTION");
          print("VVVVVVVVV ${state.notificationCount}");
        }
      },
      builder: (context, state) {
    print("CCCCC ${state.notificationCount.toString()}");
    // context.read<NavigatorBloc>()..add(LoadNavigateEvent());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Persistent Bottom ',
      home: PersistentTabView(
        onTabChanged: (i){
          context.read<NavigatorBloc>()..add(LoadNavigateEvent());
        },
        stateManagement: false,
        tabs: [
          PersistentTabConfig(
              screen: HomeScreen(),
              item: ItemConfig(
                icon: Icon(Icons.home_filled),
                title: 'Bosh sahifa',
                activeForegroundColor: Colors.black,
              )),


          PersistentTabConfig(
              screen: CatalogScreen(),
              item: ItemConfig(
                icon: Icon(Icons.manage_search_outlined),
                title: 'Katalog',
                activeForegroundColor: Colors.black,
              )),


          PersistentTabConfig(
              screen: BasketScreen(),
              item: ItemConfig(
                icon: badges.Badge(
                  showBadge: state.notificationCount > 0,
                  badgeContent: Text(state.notificationCount.toString(),
                    style: const TextStyle(color: Colors.white,),),
                  badgeStyle: const badges.BadgeStyle(
                      badgeColor: Colors.amber),
                  child: const Icon(Icons.shopping_cart_outlined),
                )
                ,
                title: "Savatcha",
                activeForegroundColor: Colors.black,
              )),


          PersistentTabConfig(
              screen: OrdersScreen(),
              item: ItemConfig(
                icon: Icon(Icons.indeterminate_check_box),
                title: 'Buyurtmalar',
                activeForegroundColor: Colors.black,
              )),


          PersistentTabConfig(
              screen: ProfileScreen(),
              item: ItemConfig(
                icon: Icon(Icons.account_circle),
                title: 'Profil',
                activeForegroundColor: Colors.black,
              )),
        ],
        navBarBuilder: (NavBarConfig) =>
            Style1BottomNavBar(
              navBarConfig: NavBarConfig,
            ),
      ),
    );
      },
    );
  }
}
