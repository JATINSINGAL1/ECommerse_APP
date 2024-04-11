import 'package:ecommerse/common/icon/circular_icon.dart';
import 'package:ecommerse/common/styles/widget_display.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:ecommerse/navigation_menu.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          ECiricluarIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const NavigationMenu()),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            children: [
              EGridDisplay(itemCount: 6, widget: EVerticalProductCard())
            ],
          ),
          ),
      ),
    );
  }
}
