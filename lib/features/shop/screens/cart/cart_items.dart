import 'package:ecommerse/common/icon/circular_icon.dart';
import 'package:ecommerse/common/texts/product_price_text.dart';
import 'package:ecommerse/features/shop/screens/cart/cart.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ECartItems extends StatelessWidget {
  const ECartItems({super.key,  this.showAddRemoveButtons=true});
  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
            // this type of thing is used to self build things with backend informatin
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: ESizes.spaceBtwSections,
              );
            },
            itemBuilder: (context, index) => Column(
              children: [
                const ECartCard(),
                if(showAddRemoveButtons)
                const SizedBox(height: ESizes.spaceBtwItems,),
                // add sub 
                if(showAddRemoveButtons)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 70,),
                        ECiricluarIcon(
                          width: 32,
                          height: 32,
                          size: ESizes.md,
                          color:EHelperFunctions.isDarkMode(context)? EColors.white:EColors.black ,
                          backgroundColor:EHelperFunctions.isDarkMode(context)? EColors.darkerGrey:EColors.light ,
                          icon: Iconsax.minus,),
                        const SizedBox(width:ESizes.spaceBtwItems,),
                        Text('2',style: Theme.of(context).textTheme.titleSmall,),
                        const SizedBox(width:ESizes.spaceBtwItems,),
                        const ECiricluarIcon(
                          width: 32,
                          height: 32,
                          size: ESizes.md,
                          color: EColors.white,
                          backgroundColor: EColors.primary ,
                          icon: Iconsax.add,),
                      ],
                    ),
                    const EProductPrizeText(price: "35",),
                  ],
                )
              
              ],
            ),
          );
  }
}