import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: screenHeight / 4,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(testFon),
        fit: BoxFit.cover,
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              testTitle,
              style: testTitleStyle,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                testSubtitle,
                style: testTitleSubtitleStyle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              style: testButtonStyle,
              child: const Text(
                testTitleButton,
                style: testButtonTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
