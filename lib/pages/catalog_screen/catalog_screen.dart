import 'package:ecommerce_cosmetic_shop/pages/catalog_screen/widgets/catalog_widget.dart';
import 'package:ecommerce_cosmetic_shop/pages/catalog_screen/widgets/test_widget.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16),
              child: TextField(
                decoration: textFieldStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Catalog(),
            SizedBox(
              height: 40,
            ),
            TestWidget()
          ],
        ),
      ),
    ));
  }
}
