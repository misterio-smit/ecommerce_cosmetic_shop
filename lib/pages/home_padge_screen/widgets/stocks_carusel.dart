import 'package:ecommerce_cosmetic_shop/models/card_model.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/image_strings.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class StocksCarusel extends StatelessWidget {
  const StocksCarusel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 16, bottom: 6),
            child: Text(title2, style: titleStyle),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16, left: 8),
            child: Image(
              image: AssetImage(linarGrad2),
            ),
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stocksCard.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      top: 8,
                      right: 6,
                    ),
                    child: SizedBox(
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(stocksCard[index].imageUrl),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            stocksCard[index].category,
                            style: const TextStyle(fontSize: 12),
                          ),
                          Text(
                            stocksCard[index].description,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Text(
                                stocksCard[index].price,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const Icon(
                                Icons.currency_ruble_rounded,
                                size: 18,
                                weight: 10,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
