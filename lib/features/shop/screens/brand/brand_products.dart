import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/brands/brand_cards.dart';
import 'package:ecommerse/common/widgets/products.cart/sortable/sortable.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBrandProducts extends StatelessWidget {
  const EBrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: EAppBar(
        title: Text('Nike',style: Theme.of(context).textTheme.headlineMedium,),
        showBackArrow: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defautSpace),
          child: Column(children: [
            EBrandCard(showBorder: true),
            SizedBox(height: ESizes.spaceBtwSections,),
            ESortableWidget(),
          ],),
        ),
      ),
    );
  }
}
