import 'package:ecommerse/common/image/rounded_image.dart';
import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/products.cart/product_card/product_card_horizontal.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ESubCategoriesScreen extends StatelessWidget {
  const ESubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text('Sports Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            children: [
              const ERoundedImage(
                width: double.infinity,
                imgUrl: EImages.item1,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              Column(
                children: [
                  ESectionHeading(
                    heading: "Sports Shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) => const EHorizontalProductCard(),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: ESizes.spaceBtwItems,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
