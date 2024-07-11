import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/profile/profile_screen.dart';

import '../../../favourite/favourite_screen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _Bottom();
}

class _Bottom extends State<Bottom> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    BlocProvider(
      create: (context) =>
      HomeBloc()
        ..add(LoadAllDataEvent()),
      child: HomeScreen(),
    ),
    BlocProvider(
      create: (context) =>
      CatalogBloc()
        ..add(GetCatalogMenuEvent()),
      child: CatalogScreen(),
    ),
    BlocProvider(
      create: (context) => BasketBloc()..add(GetProductsInBasketEvent()),
      child: BasketScreen(),
    ),
    FavouriteScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        //selectedItemColor: Color(0xffffba08),
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_sharp),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.indeterminate_check_box),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
