import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Center(
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 8, right: 4),
              child: TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaOchichenia),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 8, right: 4),
              child: TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaUvlagneniya),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 8, right: 4),
              child: TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaPitaniya),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 8, right: 4),
              child: TextButton(
                onPressed: () {},
                style: style,
                child: const Text(dlyaOmolozgeniya),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
