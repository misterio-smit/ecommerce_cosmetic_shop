import 'package:ecommerce_cosmetic_shop/utils/constants/colors.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/icons.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

final style = ButtonStyle(
    foregroundColor: WidgetStateProperty.all(Colors.black87),
    minimumSize: WidgetStateProperty.all(Size(170.0, 60.0)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(color: borderColor)),
    ));

final styleToStocK = ButtonStyle(
    shape: WidgetStateProperty.all(
  RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
      side: const BorderSide(color: whiteColor)),
));

final styleToCSWite = ButtonStyle(
    foregroundColor: WidgetStateProperty.all(blackColor),
    backgroundColor: WidgetStateProperty.all(containerColor),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: whiteColor)),
    ));

final styleToCSBlack = ButtonStyle(
    foregroundColor: WidgetStateProperty.all(whiteColor),
    backgroundColor: WidgetStateProperty.all(blackColor),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: whiteColor)),
    ));

final testButtonStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all(Colors.black87),
    minimumSize: WidgetStateProperty.all(const Size(130, 40)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    ));

final searchButton = ButtonStyle(
  foregroundColor: WidgetStateProperty.all(Colors.black87),
);

const rSemibold = 'Raleway-SemiBold';
const rMedium = 'Raleway-Medium';
const rBold = 'Raleway-Bold';
const vSemibold = 'VelaSans-SemiBold';
const vRegular = 'VelaSans-Regular';

const titleStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: blackColor,
);
const titleDiscount = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: whiteColor,
  fontFamily: vSemibold,
);
const titleD = TextStyle(
  fontSize: 18,
  color: whiteColor,
  fontFamily: vRegular,
);
const testTitleStyle = TextStyle(
  fontSize: 16,
  color: blackColor,
  fontFamily: rBold,
);

const typeTitleStyle = TextStyle(
  fontSize: 20,
  color: blackColor,
  fontFamily: rBold,
);

const testTitleSubtitleStyle = TextStyle(
  fontSize: 14,
  color: blackColor,
  fontFamily: rMedium,
);

const subTitleD = TextStyle(
  fontSize: 18,
  color: whiteColor,
  fontFamily: vRegular,
);

const productStye = TextStyle(
  fontSize: 16,
  color: blackColor,
  fontFamily: rMedium,
);

const testButtonTextStyle = TextStyle(
  fontSize: 12,
  color: whiteColor,
  fontFamily: rSemibold,
);

const forFatSkinStyle = TextStyle(
  fontSize: 24,
  color: blackColor,
  fontFamily: rSemibold,
);

const searchButtonStyle = TextStyle(
  fontSize: 20,
  color: blackColor,
  fontFamily: rSemibold,
);

const toStockStyle = TextStyle(
  fontSize: 12,
  color: whiteColor,
  fontFamily: rSemibold,
);
const boxGradient = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
      Color.fromARGB(0, 122, 122, 122),
      Color.fromARGB(144, 2, 2, 2)
    ]));

const textFieldStyle = InputDecoration(
    prefixIcon: ImageIcon(AssetImage(search)),
    hintText: poisk,
    hintStyle: TextStyle(fontSize: 18, fontFamily: rMedium),
    contentPadding: EdgeInsets.all(15),
    border: UnderlineInputBorder(
        borderSide: BorderSide(color: Color.fromARGB(148, 146, 146, 146))),
    focusedBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)));
