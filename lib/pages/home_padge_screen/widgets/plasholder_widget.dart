import 'package:ecommerce_cosmetic_shop/models/data_model.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class PlasholderWidget extends StatefulWidget {
  final DataModel imagePaths;
  const PlasholderWidget({super.key, required this.imagePaths});

  @override
  State<PlasholderWidget> createState() => _PlasholderWidgetState();
}

class _PlasholderWidgetState extends State<PlasholderWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Stack(
      fit: StackFit.expand,
      children: [
        Image(
          image: AssetImage(widget.imagePaths.imageUrl),
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 0,
          child: Center(
            child: Container(
                width: screenWidth,
                height: screenWidth / 2,
                decoration: boxGradient),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.imagePaths.sale,
                style: titleDiscount,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    width: screenWidth / 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.imagePaths.title,
                          style: titleD,
                        ),
                        Text(
                          widget.imagePaths.subTitle.toUpperCase(),
                          style: subTitleD,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                      width: 150,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextButton(
                          onPressed: () {},
                          style: styleToStocK,
                          child: const Text(
                            toStock,
                            style: toStockStyle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
