import 'package:ecommerce_cosmetic_shop/pages/category_skin_screen/widgets/category_skin.dart';
import 'package:ecommerce_cosmetic_shop/pages/category_skin_screen/widgets/category_skin_grid.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:ecommerce_cosmetic_shop/pages/app_bar_widget.dart';
import 'package:flutter/material.dart';

class CategorySkinScreen extends StatefulWidget {
  const CategorySkinScreen({super.key});

  @override
  State<CategorySkinScreen> createState() => _CategorySkinScreenState();
}

class _CategorySkinScreenState extends State<CategorySkinScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 100, bottom: 8),
                        child: Text(
                          forFatSkin,
                          style: forFatSkinStyle,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            '28 продуктов',
                            style: productStye,
                          ),
                          GestureDetector(
                            child: const Image(
                                image: AssetImage(fadersHorizontal)),
                            onTap: () {},
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                    ]),
              ),
              const CategorySkin(),
              const CategorySkinGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
