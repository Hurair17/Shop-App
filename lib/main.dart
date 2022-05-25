import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shop_app/screens/product_overview_screen.dart';
import 'package:shop_app/widgets/product_items.dart';
import './screens/product_overview_screen.dart';
import 'screens/product_detail.dart';
import 'package:provider/provider.dart';
import './provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ProductsProvider(),
    child: MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
      ),
      home: MyHomePage(),
      routes: {
        ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
      },
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(300, 600),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, _) {
        return ProductOverViewScreen();
      },
    );
  }
}
