import 'package:ecommerce_cosmetic_shop/utils/constants/image_strings.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({super.key});

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 160, top: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  style: searchButton,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/ typeScreen '),
                  child: const Text(
                    naznachenie,
                    style: searchButtonStyle,
                  ),
                ),
                TextButton(
                  style: searchButton,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/ typeScreen '),
                  child: const Text(tipStrdctva, style: searchButtonStyle),
                ),
                TextButton(
                  style: searchButton,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/ typeScreen '),
                  child: const Text(tipKogi, style: searchButtonStyle),
                ),
                TextButton(
                  style: searchButton,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/ typeScreen '),
                  child: const Text(liniyaKosmetiki, style: searchButtonStyle),
                ),
                TextButton(
                  style: searchButton,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/ typeScreen '),
                  child: const Text(nabori, style: searchButtonStyle),
                ),
                Row(
                  children: [
                    TextButton(
                      style: searchButton,
                      onPressed: () =>
                          Navigator.pushNamed(context, '/ typeScreen '),
                      child: const Text(akciy, style: searchButtonStyle),
                    ),
                    const Image(image: AssetImage(star)),
                  ],
                ),
                TextButton(
                  style: searchButton,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/ typeScreen '),
                  child: const Text(konsultaciya, style: searchButtonStyle),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
