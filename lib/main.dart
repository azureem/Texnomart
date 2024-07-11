import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:texnomart/data/source/local/BasketModel/basket_model.dart';
import 'package:texnomart/data/source/local/ProductModel/favourite_model.dart';
import 'package:texnomart/navigator/navigator_bloc/navigator_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/basket/basket_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_screen.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/home/home_screen.dart';
import 'package:texnomart/presentation/screens/splash/splash_screen.dart';

import 'di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);

  Hive.registerAdapter(FavouriteModelAdapter());
  Hive.registerAdapter(BasketModelAdapter());

  await Hive.openBox<FavouriteModel>('Favourites');
  await Hive.openBox<BasketModel>('Basket');
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigatorBloc()..add(LoadNavigateEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
