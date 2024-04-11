import 'package:ecommerse/common/styles/widget_display.dart';
import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/appBar/custom_tabbar.dart';
import 'package:ecommerse/common/widgets/brands/brand_cards.dart';
import 'package:ecommerse/common/widgets/brands/brand_showcase.dart';
import 'package:ecommerse/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:ecommerse/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:ecommerse/features/shop/screens/brand/all_brand.dart';
import 'package:ecommerse/features/shop/screens/cart/cart.dart';
import 'package:ecommerse/features/shop/screens/home/home.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: EAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            ECartCounterIcon(
              onPressed: () {
                Get.to(const CartScreen());
              },
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: darkMode ? EColors.black : EColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(ESizes.defautSpace),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        const SizedBox(
                          height: ESizes.spaceBtwItems,
                        ),
                        const EHomeSearchBar(
                          padding: EdgeInsets.zero,
                          showBorder: true,
                          showBackGround: false,
                          text: 'Search in Store',
                        ),
                        const SizedBox(
                          height: ESizes.spaceBtwSections,
                        ),
                        ESectionHeading(
                          heading: 'Featured Brand',
                          showActionButton: true,
                          buttonTitle: "View all",
                          onPressed: () => Get.to(const AllBrandScreen()),
                        ),
                        const SizedBox(
                          height: ESizes.spaceBtwItems / 1.5,
                        ),
                        const EGridDisplay(
                            mainAxisExtent: 80,
                            itemCount: 4,
                            widget: EBrandCard(showBorder: false)),
                      ],
                    ),
                  ),

                  // tabs
                  bottom: const ETabBar(
                    tabs: [
                      Tab(
                        child: Text('Sports'),
                      ),
                      Tab(
                        child: Text('Furniture'),
                      ),
                      Tab(
                        child: Text('Electronics'),
                      ),
                      Tab(
                        child: Text('Clothes'),
                      ),
                      Tab(
                        child: Text('Cosmetics'),
                      ),
                    ],
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [ECategoryTab(darkMode: darkMode)],
            )),
      ),
    );
  }
}

class ECategoryTab extends StatelessWidget {
  const ECategoryTab({
    super.key,
    required this.darkMode,
  });

  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ESizes.defautSpace),
      child: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            EBrandShowcase(
              darkMode: darkMode,
              images: const ["", "", ""],
            ),
            ESectionHeading(
              heading: "You Might Like",
              onPressed: () {},
            ),
            const SizedBox(
              height: ESizes.spaceBtwItems,
            ),
            const EGridDisplay(itemCount: 4, widget: EVerticalProductCard()),
            const SizedBox(
              height: ESizes.spaceBtwSections,
            ),
          ],
        ),
      ]),
    );
  }
}
