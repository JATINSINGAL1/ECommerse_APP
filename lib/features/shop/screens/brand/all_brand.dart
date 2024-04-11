import 'package:ecommerse/common/styles/widget_display.dart';
import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/brands/brand_cards.dart';
import 'package:ecommerse/features/shop/screens/brand/brand_products.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const EAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            children: [
              const ESectionHeading(
                heading: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              // Brands
              EGridDisplay(
                  mainAxisExtent: 80,
                  itemCount: 10,
                  widget: EBrandCard(
                    showBorder: true,
                    onTap: () => Get.to(const EBrandProducts()),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
