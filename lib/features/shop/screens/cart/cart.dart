import 'package:ecommerse/common/image/rounded_image.dart';
import 'package:ecommerse/common/texts/brand_title.dart';
import 'package:ecommerse/common/texts/product_title.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/features/shop/screens/cart/cart_items.dart';
import 'package:ecommerse/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body:const SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(ESizes.defautSpace),
          child: ECartItems(),
        ),
      ),
      bottomNavigationBar: ElevatedButton(onPressed: ()=>Get.to(const ECheckoutScreen()), child: const Text("CheckOut \$256")),
    );
  }
}

class ECartCard extends StatelessWidget {
  const ECartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        // image part
        ERoundedImage(
            width: 60,
            height: 60,
            radius: 60,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: EHelperFunctions.isDarkMode(context)
                ? EColors.darkerGrey
                : EColors.light,
            imgUrl: ''),
        const SizedBox(
          width: ESizes.spaceBtwItems,
        ),
        // poduct detail part
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // text part
              const EBrandTitleWithVerifiedIcon(title: 'Nike',),
               const Flexible(
                 child: EProductTitle(
                   title: "Black Sports Shoes",
                   
                   maxLines: 1,
                 ),
               ),
          
              // Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'green ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08 ' ,
                    style: Theme.of(context).textTheme.bodyLarge),        
              ])),
              // quantity and price
              
            ],
          ),
        ),
      ],
    );
  }
}
