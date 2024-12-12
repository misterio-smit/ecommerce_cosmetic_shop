import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaOchichenia),
              ),
              TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaUvlagneniya),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaPitaniya),
              ),
              TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaOmolozgeniya),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
