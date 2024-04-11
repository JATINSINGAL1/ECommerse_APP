import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body:const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defautSpace),
          child: EOrderListItems(),
        ),
      ),
    );
  }
}

class EOrderListItems extends StatelessWidget {
  const EOrderListItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (context, index) => const SizedBox(height: ESizes.spaceBtwItems,),
      itemBuilder:(context,index)=> ERoundedContainer(
        showBorder: true,
        padding:const EdgeInsets.all(ESizes.md),
        backgroundColor: EHelperFunctions.isDarkMode(context)
            ? EColors.dark
            : EColors.light,
        child: Column(
          children: [
            /// Row 1
            Row(
              children: [
                const Icon(Iconsax.ship),
                const SizedBox(
                  width: ESizes.spaceBtwItems / 2,
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: EColors.primary, fontWeightDelta: 1),
                      ),
                      Text('16 Aug 24',style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34,size: ESizes.iconSm,))
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwItems,),
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.tag),
                      const SizedBox(
                        width: ESizes.spaceBtwItems / 2,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium!,
                            ),
                            Text('[#25496]',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                        
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Iconsax.calendar),
                      const SizedBox(
                        width: ESizes.spaceBtwItems / 2,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium!,
                            ),
                            Text('[#25496]',style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
