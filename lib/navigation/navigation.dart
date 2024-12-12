import 'package:ecommerce_cosmetic_shop/pages/catalog_screen/catalog_screen.dart';
import 'package:ecommerce_cosmetic_shop/pages/category_skin_screen/category_skin_screen.dart';
import 'package:flutter/material.dart';
import '../pages/type_screen/type_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  GlobalKey<NavigatorState> catalogNavigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: catalogNavigatorKey,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              settings: settings,
              builder: (BuildContext context) {
                if (settings.name == '/ categorySkinScreen ') {
                  return const CategorySkinScreen();
                }
                if (settings.name == '/ typeScreen ') {
                  return const TypeScreen();
                }

                return const CatalogScreen();
              });
        });
  }
}
