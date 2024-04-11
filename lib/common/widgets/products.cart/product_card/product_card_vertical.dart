import 'package:ecommerse/common/icon/circular_icon.dart';
import 'package:ecommerse/common/image/rounded_image.dart';
import 'package:ecommerse/common/styles/shadow.dart';
import 'package:ecommerse/common/texts/product_price_text.dart';
import 'package:ecommerse/common/texts/product_title.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/features/shop/screens/ProductDetails/product_detail.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class EVerticalProductCard extends StatelessWidget {
  const EVerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {Get.to(const ProductDetail());},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.horizontalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: darkMode ? EColors.darkerGrey : EColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail , Wishlist Button, Discount Tag
            ERoundedContainer(
              height: 176,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: darkMode ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  //thumbnail Image
                  const ERoundedImage(
                    height: 150,
                    imgUrl: EImages.onboardingImage3,
                    applyImageRadius: true,
                  ),

                  // sale Tag
                  Positioned(
                    top: 12,
                    child: ERoundedContainer(
                      radius: ESizes.sm,
                      backgroundColor: EColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          vertical: ESizes.xs, horizontal: ESizes.sm),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: EColors.black),
                      ),
                    ),
                  ),
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: ECiricluarIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),
            const SizedBox(height: ESizes.defautSpace / 2),
            // Details
            Padding(
              padding: const EdgeInsets.all(ESizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EProductTitle(
                    title: 'Nike Green Air Shoes',
                    smallSize: true,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Nike",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: ESizes.xs,
                      ),
                      const Icon(
                        Iconsax.verify5,
                        color: EColors.primary,
                        size: ESizes.iconXs,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: ESizes.sm),
                  child: EProductPrizeText(
                    price: '35.0',
                  ),
                ),

                // Add to Cart Button
                Container(
                  decoration: const BoxDecoration(
                    color: EColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ESizes.cardRadiusMd),
                      bottomRight: Radius.circular(ESizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: ESizes.iconLg * 1.2,
                    height: ESizes.iconLg * 1.2,
                    child: Center(
                        child: Icon(
                      Iconsax.add,
                      color: EColors.white,
                    )),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
