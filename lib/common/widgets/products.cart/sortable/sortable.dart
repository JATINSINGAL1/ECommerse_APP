import 'package:ecommerse/common/styles/widget_display.dart';
import 'package:ecommerse/common/widgets/products.cart/product_card/product_card_vertical.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ESortableWidget extends StatelessWidget {
  const ESortableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField(
            decoration:const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (value) {}),
       const SizedBox(height: ESizes.spaceBtwItems,),
        /// Product
        const EGridDisplay(itemCount: 9, widget: EVerticalProductCard())
      ],
    );
  }
}
