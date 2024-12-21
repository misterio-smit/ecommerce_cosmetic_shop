import 'package:ecommerce_cosmetic_shop/models/card_model.dart';
import 'package:flutter/material.dart';

class CategorySkinGrid extends StatelessWidget {
  const CategorySkinGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 370, right: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              mainAxisExtent: 320),
          scrollDirection: Axis.vertical,
          itemCount: newCard.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Image(
                    image: AssetImage(newCard[index].imageUrl),
                  ),
                ),
                Text(
                  newCard[index].category,
                  style: const TextStyle(fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    newCard[index].description,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      newCard[index].price,
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
            );
          },
        ),
      ),
    );
  }
}
