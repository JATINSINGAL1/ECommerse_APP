import 'package:ecommerse/common/icon/circular_icon.dart';
import 'package:ecommerse/common/image/rounded_image.dart';
import 'package:ecommerse/common/styles/shadow.dart';
import 'package:ecommerse/common/texts/brand_title.dart';
import 'package:ecommerse/common/texts/product_price_text.dart';
import 'package:ecommerse/common/texts/product_title.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EHorizontalProductCard extends StatelessWidget {
  const EHorizontalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Container(
        width: 310,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [EShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: darkMode ? EColors.darkerGrey : EColors.lightContainer,
        ),
        child: Row(
          children: [
            ERoundedContainer(
              height: 120,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: darkMode ? EColors.dark : EColors.light,
              child: Stack(
                children: [
                  const SizedBox(
                      height: 120,
                      width: 120,
                      child: ERoundedImage(
                        imgUrl: '',
                        applyImageRadius: true,
                      )),
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
            SizedBox(
              width: 172,
              child: Padding(
                padding: const EdgeInsets.only(top: ESizes.sm, left: ESizes.sm),
                child: Column(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        EProductTitle(
                          title: 'Green Nike Shoes with White Strips',
                          smallSize: true,
                        ),
                        SizedBox(
                          height: ESizes.spaceBtwItems / 2,
                        ),
                        EBrandTitleWithVerifiedIcon(title: 'Nike')
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Flexible(child: EProductPrizeText(price: '256.0')),
                        
                        // Add to cart
                        Container(
                          decoration: const BoxDecoration(
                            color: EColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(ESizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(ESizes.productImageRadius),
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
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
