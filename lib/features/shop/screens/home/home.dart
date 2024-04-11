import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerse/common/image/rounded_image.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/common/widgets/products.cart/cart_menu_icon.dart';
import 'package:ecommerse/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:ecommerse/features/shop/controllers/home_controller.dart';
import 'package:ecommerse/features/shop/screens/ProductDetails/all_product_screen.dart';
import 'package:ecommerse/features/shop/screens/cart/cart.dart';
import 'package:ecommerse/features/shop/screens/home/home_categories.dart';
import 'package:ecommerse/features/shop/screens/subcategory/subcategory.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/constants/texts.dart';
import 'package:ecommerse/utils/device/device_utility.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/styles/widget_display.dart';
import '../../../../common/widgets/TextWidget/section_title.dart';
import '../../../../common/widgets/customshapes/curved_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ECurvedWidget(
              child: Column(
                children: [
                  // App Bar
                  EHomeAppBar(),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  // SearchBar
                  EHomeSearchBar(text: 'Search in Store'),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  // Categories Scroll View
                  CategoryScrollWidget(),
                  SizedBox(
                    height: ESizes.spaceBtwSections,
                  )
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(ESizes.defautSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Promo slider

                  const EBanner(),

                  ///
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  // Popular Products --
                  ESectionHeading(heading: "Popular Products", buttonTitle: 'View all',onPressed: () => Get.to(const AllProductScreen()), ),
                   const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  const EGridDisplay(
                    itemCount: 4,
                    widget: EVerticalProductCard(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EBanner extends StatelessWidget {
  const EBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: const [
            ERoundedImage(backgroundColor: EColors.white,imgUrl: EImages.onboardingImage1),
            ERoundedImage(imgUrl: EImages.onboardingImage2),
            ERoundedImage(imgUrl: EImages.onboardingImage3),
          ],
          options: CarouselOptions(
              onPageChanged: (index,_)=>controller.updatePageIndicator(index),
              scrollDirection: Axis.horizontal,
              
              viewportFraction: 1),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        Obx(
          ()=> Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                   ERoundedContainer(
                    width: 20,
                    height: 5,
                    margin:const  EdgeInsets.only(right: 10),
                    backgroundColor:controller.carousalPageIndex.value==i? Colors.green:EColors.grey,
                    child:const  SizedBox(),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CategoryScrollWidget extends StatelessWidget {
  const CategoryScrollWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: ESizes.defautSpace),
      child: Column(
        children: [
          // Heading
          const ESectionHeading(
            heading: 'Popular Categories',
            buttonTitle: 'buttonTitle',
            showActionButton: false,
          ),
          const SizedBox(
            height: ESizes.spaceBtwItems,
          ),
          // Categories
          // for horizontal scrolling we use [ListView()] widget also there are two possible method
          // 1 manually or 2 using listview builder
          SizedBox(
            height: 60,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return EHomeCategories(ontap: () => Get.to(const  ESubCategoriesScreen()),);
              },
            ),
          )
        ],
      ),
    );
  }
}

// custom build Search Bar
class EHomeSearchBar extends StatelessWidget {
  const EHomeSearchBar({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackGround = true,
    this.showBorder = true, this.onTap, this.padding=const EdgeInsets.symmetric(horizontal: ESizes.defautSpace), 
  });
  final VoidCallback? onTap;
  final String text;
  final IconData? icon;
  final bool showBackGround, showBorder;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: EDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.symmetric(
              vertical: ESizes.md, horizontal: ESizes.md),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
            color: showBackGround
                ? darkMode
                    ? EColors.dark
                    : EColors.light
                : Colors.transparent,
            border: showBorder ? Border.all(color: EColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: EColors.darkGrey,
              ),
              const SizedBox(
                width: ESizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}

// custom build home app bar
class EHomeAppBar extends StatelessWidget {
  const EHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            ETexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: EColors.grey),
          ),
          Text(
            ETexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: EColors.white),
          ),
        ],
      ),
      actions: [
        ECartCounterIcon(
          onPressed: () {
            Get.to(const CartScreen());
          },
          
        ),
      ],
    );
  }
}
