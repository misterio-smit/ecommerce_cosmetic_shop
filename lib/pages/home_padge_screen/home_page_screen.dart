import 'dart:async';
import 'package:ecommerce_cosmetic_shop/models/data_model.dart';
import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/widgets/category.dart';
import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/widgets/hits_carusel.dart';
import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/widgets/home_care_carusel.dart';
import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/widgets/new_carusel.dart';
import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/widgets/category_carusel.dart';
import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/widgets/plasholder_widget.dart';
import 'package:ecommerce_cosmetic_shop/pages/home_padge_screen/widgets/stocks_carusel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

late List<Widget> _pages;

late PageController _pageController;

int _activePages = 0;

Timer? _timer;

class _HomePageState extends State<HomePage> {
  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.page == imagePaths.length - 1) {
        _pageController.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      } else {
        _pageController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    _pages = List.generate(
        imagePaths.length,
        (index) => PlasholderWidget(
              imagePaths: imagePaths[index],
            ));

    startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: screenHeight / 2,
                  child: PageView.builder(
                      controller: _pageController,
                      itemCount: imagePaths.length,
                      onPageChanged: (value) {
                        setState(() {
                          _activePages = value;
                        });
                      },
                      itemBuilder: (context, index) {
                        return _pages[index];
                      }),
                ),
                Positioned(
                  top: 53,
                  left: 10,
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      children: List<Widget>.generate(
                        imagePaths.length,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                            },
                            child: CircleAvatar(
                              radius: 5,
                              backgroundColor: _activePages == index
                                  ? const Color.fromARGB(255, 217, 217, 217)
                                  : const Color.fromARGB(120, 217, 217, 217),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const CategoryCarusel(),
            const SizedBox(height: 20),
            const NewCarusel(),
            const SizedBox(height: 20),
            const HomeCareCarusel(),
            const SizedBox(height: 20),
            const StocksCarusel(),
            const SizedBox(height: 20),
            const Category(),
            const HitsCarusel(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
