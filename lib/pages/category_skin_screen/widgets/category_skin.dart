import 'package:ecommerce_cosmetic_shop/models/list_model.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class CategorySkin extends StatefulWidget {
  const CategorySkin({super.key});

  @override
  State<CategorySkin> createState() => _CategorySkinState();
}

class _CategorySkinState extends State<CategorySkin> {
  int _pressed = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 9,
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 24.0,
        ),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categorySkin.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: _pressed == index ? styleToCSBlack : styleToCSWite,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        categorySkin[index].category,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _pressed = index;
                      });
                    },
                  ));
            }),
      ),
    );
  }
}
      
    
  

// Container(
//                 decoration: const BoxDecoration(
//                   color: containerColor,
//                   borderRadius: BorderRadius.all(Radius.circular(10)),
//                 ),
//                 child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     child: Text(
//                       categorySkin[index].category,
//                       style: const TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ),