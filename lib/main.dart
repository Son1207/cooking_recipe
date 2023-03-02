import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:food_app/pages/home/widget/category.dart';
import 'package:food_app/pages/home/widget/product.dart';
import 'package:food_app/pages/index.dart';
import 'package:food_app/providers/category_provider.dart';
import 'package:food_app/providers/product_provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CategoryProvider()),
      ChangeNotifierProvider(create: (_) => ProductProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        MyApp.routeName: ((context) => const MyApp()),
        CategoryPage.routeName: ((context) =>  CategoryPage()),
        ProductPage.routeName: ((context) => const ProductPage()),
      },
    ),
  ));
}
