import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/screens/main_bottom/catalog/catalog_bloc.dart';
import 'package:texnomart/utils/status.dart';

import 'catalog_widget/get_catalog_item.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xffffba08),
    ));
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            width: double.infinity,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hintText: 'Sotib olish',
                prefixIcon: Icon(Icons.search, color: Colors.grey,),
                hintStyle:
                TextStyle(color: Colors.grey, fontSize: 18.0),
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0),
              ),
              onChanged: (value) {
                // Handle search logic here
              },
            ),
          ),
        ),
        body: BlocConsumer<CatalogBloc, CatalogState>(
          listener: (context, state) {

          },
          builder: (context, state) {
            return getCatalogItem(state.catalogList, state.catalogMenuStatus == Status.loading);
          },
        ),
    );
  }
}
