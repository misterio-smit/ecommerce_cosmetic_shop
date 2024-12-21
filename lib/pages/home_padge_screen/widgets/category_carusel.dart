import 'package:ecommerce_cosmetic_shop/models/new_model.dart';
import 'package:flutter/material.dart';

class CategoryCarusel extends StatelessWidget {
  const CategoryCarusel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24.0,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: newModelList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
              ),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(newModelList[index].imageUrl),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      newModelList[index].description,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
