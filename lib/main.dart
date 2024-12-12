import 'package:ecommerce_cosmetic_shop/pages/catalog_screen/catalog_screen.dart';
import 'package:ecommerce_cosmetic_shop/pages/category_skin_screen/category_skin_screen.dart';
import 'package:ecommerce_cosmetic_shop/pages/main_screen.dart';
import 'package:ecommerce_cosmetic_shop/pages/type_screen/type_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
      initialRoute: '/',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          unselectedIconTheme: IconThemeData(color: Color(0xFF70757F)),
          selectedIconTheme: IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
        ),
      ),
      routes: {
        //"/": (context) => const MainScreen(),
        '/ typeScreen ': (context) => const TypeScreen(),
        '/ categorySkinScreen ': (context) => const CategorySkinScreen(),
        '/ catalogScreen': (context) => const CatalogScreen(),
      },
    );
  }
}
