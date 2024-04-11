import 'package:ecommerse/common/icon/circular_icon.dart';
import 'package:ecommerse/common/image/rounded_image.dart';
import 'package:ecommerse/common/texts/brand_title.dart';
import 'package:ecommerse/common/texts/product_price_text.dart';
import 'package:ecommerse/common/texts/product_title.dart';
import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/chips/chips.dart';
import 'package:ecommerse/common/widgets/customshapes/curved_widget.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/features/shop/screens/ProductReview/productreview.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/enums.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const EBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            EImgaeProductSlider(darkMode: darkMode),
            const Padding(
              padding: EdgeInsets.only(
                  right: ESizes.defautSpace,
                  left: ESizes.defautSpace,
                  bottom: ESizes.defautSpace),
              child: Column(
                children: [
                  ERatingandShare(),
                  SizedBox(
                    height: ESizes.spaceBtwItems / 2,
                  ),
                  EProductMetaData(),
                  SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  EProductAttribute(),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  CheckoutButton(),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  ESectionHeading(
                    heading: "Description",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    'The user interface of the app is quite interactive. I was able to navigate and make purchases seamlessly.Great job!',
                    trimLines: 1,
                    trimMode: TrimMode.Line,
                    trimExpandedText: ' Less',
                    trimCollapsedText: ' Show More',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  ReviewSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EBottomAddToCart extends StatelessWidget {
  const EBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: ESizes.defautSpace, vertical: ESizes.defautSpace / 2),
      decoration: BoxDecoration(
          color: darkMode ? EColors.darkerGrey : EColors.light,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(ESizes.cardRadiusLg),
            topRight: Radius.circular(ESizes.cardRadiusLg),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const ECiricluarIcon(
                  backgroundColor: EColors.darkGrey,
                  color: EColors.white,
                  height: 40,
                  width: 40,
                  icon: Iconsax.minus),
              const SizedBox(
                width: ESizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: ESizes.spaceBtwItems,
              ),
              const ECiricluarIcon(
                  backgroundColor: EColors.black,
                  color: EColors.white,
                  height: 40,
                  width: 40,
                  icon: Iconsax.add),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side:const BorderSide(color: EColors.black),
                  backgroundColor: EColors.black,
                  padding:const  EdgeInsets.all(ESizes.md)),
              onPressed: () {},
              child:const  Text('Add to Cart')),
        ],
      ),
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ESectionHeading(
          heading: 'Reviews (199)',
          showActionButton: false,
        ),
        IconButton(
            onPressed: () => Get.to(const ProductReviewScreen()),
            icon: const Icon(Iconsax.arrow_right_3)),
      ],
    );
  }
}

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(onPressed: () {}, child: const Text("Checkout")),
    );
  }
}

class EProductAttribute extends StatelessWidget {
  const EProductAttribute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        ERoundedContainer(
          padding: const EdgeInsets.all(ESizes.md),
          backgroundColor: darkMode ? EColors.darkerGrey : EColors.grey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const ESectionHeading(
                    heading: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: ESizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const EProductTitle(
                            title: 'Price:',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: ESizes.spaceBtwItems,
                          ),
                          Text(
                            '\$25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: ESizes.spaceBtwItems / 2,
                          ),
                          const EProductPrizeText(price: "20"),
                        ],
                      ),
                      Row(
                        children: [
                          const EProductTitle(
                            title: 'Stock:',
                            smallSize: true,
                          ),
                          const SizedBox(
                            width: ESizes.spaceBtwItems,
                          ),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const EProductTitle(
                title:
                    "This is the discription of the Product and it can go upto maximun 4 lines ",
                maxLines: 4,
                smallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(
              heading: 'Color',
              showActionButton: false,
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CustomChips(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChips(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChips(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ESectionHeading(
              heading: 'Size',
              showActionButton: false,
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                CustomChips(
                  text: 'UK 22',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChips(
                  text: 'UK 23',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChips(
                  text: 'UK 24',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class ERatingandShare extends StatelessWidget {
  const ERatingandShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
        // Rating
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          const Icon(
            Iconsax.star5,
            size: 25,
            color: Colors.amber,
          ),
          const SizedBox(
            width: ESizes.spaceBtwItems,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
                text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
            const TextSpan(text: '(199)'),
          ])),
        ]),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share),
          iconSize: ESizes.lg,
        )
      ],
    );
  }
}

class EImgaeProductSlider extends StatelessWidget {
  const EImgaeProductSlider({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return ECurvedWidget(
      child: Container(
          color: darkMode ? EColors.darkerGrey : EColors.light,
          child: Stack(
            children: [
              const SizedBox(
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(ESizes.productImageRadius * 2),
                  child:
                      Center(child: Image(image: NetworkImage(EImages.item1))),
                ),
              ),
              Positioned(
                  bottom: 20,
                  right: 30,
                  left: ESizes.defautSpace,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 80,
                      child: ListView.separated(
                        shrinkWrap: true,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ERoundedImage(
                            padding: const EdgeInsets.all(ESizes.sm),
                            border: Border.all(color: EColors.primary),
                            width: 80,
                            backgroundColor:
                                darkMode ? EColors.dark : EColors.light,
                            imgUrl: EImages.onboardingImage1),
                        separatorBuilder: (context, index) => const SizedBox(
                          width: ESizes.spaceBtwItems,
                        ),
                      ),
                    ),
                  )),
              const EAppBar(
                showBackArrow: true,
                actions: [
                  ECiricluarIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  )
                ],
              )
            ],
          )),
    );
  }
}

class EProductMetaData extends StatelessWidget {
  const EProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ERoundedContainer(
                radius: ESizes.sm,
                padding: const EdgeInsets.symmetric(
                    horizontal: ESizes.sm, vertical: ESizes.xs),
                backgroundColor: EColors.secondary.withOpacity(0.8),
                child: Text(
                  '25%',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: EColors.black),
                )),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            const EProductPrizeText(
              price: "175",
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
        const EProductTitle(
          title: 'Green Nike Shoes',
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
        Row(
          children: [
            const EProductTitle(title: 'Status:'),
            const SizedBox(
              width: ESizes.spaceBtwItems / 1.5,
            ),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 1.5,
        ),
        const Row(
          children: [
            ERoundedImage(
              width: 32,
              height: 32,
              imgUrl: EImages.user,
            ),
            SizedBox(
              width: ESizes.spaceBtwItems / 2,
            ),
            EBrandTitleWithVerifiedIcon(
              title: 'Nike',
              brandTextSizes: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
