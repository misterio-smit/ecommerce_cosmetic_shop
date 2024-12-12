import 'package:ecommerce_cosmetic_shop/navigation/navigation.dart';

import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/home_page_screen.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/icons.dart';
import 'package:ecommerce_cosmetic_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MaimScreenState();
}

class _MaimScreenState extends State<MainScreen> {
  int _currentTub = 0;

  final screens = const [
    HomePage(),
    Navigation(),
    Center(
      child: Text('Корзина', style: TextStyle(fontSize: 35.0)),
    ),
    Center(
      child: Text('Профиль', style: TextStyle(fontSize: 35.0)),
    ),
  ];

  void onCurrentTab(int index) {
    if (_currentTub == index) return;
    setState(() {
      _currentTub = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentTub],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTub,
        items: const [
          BottomNavigationBarItem(
            label: bottonBar1,
            icon: ImageIcon(AssetImage(house), size: 30.0),
          ),
          BottomNavigationBarItem(
            label: bottonBar2,
            icon: ImageIcon(AssetImage(catalog), size: 30.0),
          ),
          BottomNavigationBarItem(
            label: bottonBar3,
            icon: ImageIcon(AssetImage(card), size: 30.0),
          ),
          BottomNavigationBarItem(
            label: bottonBar4,
            icon: ImageIcon(AssetImage(user), size: 30.0),
          ),
        ],
        onTap: onCurrentTab,
      ),
    );
  }
}
