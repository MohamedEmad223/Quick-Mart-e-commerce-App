import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_style.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order History',
          style: AppTextStyle.plusJakartaSans14mediumblackColor,
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Wishlist Screen'),
      ),
    );
  }
}
