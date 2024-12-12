import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:ecommerce_cosmetic_shop/pages/app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/styles.dart';

class TypeScreen extends StatelessWidget {
  const TypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: titleSkin),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 160, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    style: searchButton,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/ categorySkinScreen '),
                    child: const Text(fatSkin, style: searchButtonStyle),
                  ),
                  TextButton(
                    style: searchButton,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/ categorySkinScreen '),
                    child: const Text(kombiSkin, style: searchButtonStyle),
                  ),
                  TextButton(
                    style: searchButton,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/ categorySkinScreen '),
                    child: const Text(normalSkin, style: searchButtonStyle),
                  ),
                  TextButton(
                    style: searchButton,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/ categorySkinScreen '),
                    child: const Text(draySkin, style: searchButtonStyle),
                  ),
                  TextButton(
                    style: searchButton,
                    onPressed: () =>
                        Navigator.pushNamed(context, '/ categorySkinScreen '),
                    child: const Text(anyTypeSkin, style: searchButtonStyle),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
