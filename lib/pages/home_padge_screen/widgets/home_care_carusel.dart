import 'package:ecommerce_cosmetic_shop/models/new_model.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/image_strings.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeCareCarusel extends StatelessWidget {
  const HomeCareCarusel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(fonImage),
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              mySchem,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 130,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
              ),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: homeCareList.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 120,
                    height: 120,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage(homeCareList[index].imageUrl),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            homeCareList[index].description,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: const Text(
                  vopros,
                  style:
                      TextStyle(fontSize: 13, fontFamily: 'Raleway-SemiBold'),
                ),
              ),
              TextButton(
                style: testButtonStyle,
                onPressed: () {},
                child: const Text(
                  testTitleButton,
                  style: testButtonTextStyle,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
