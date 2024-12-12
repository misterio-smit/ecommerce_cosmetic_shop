import 'package:ecommerce_cosmetic_shop/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(80);
  final String title;

  const AppBarWidget({
    this.title = "",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80,
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 40,
        ),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Text(title, style: typeTitleStyle),
      ),
    );
  }
}
