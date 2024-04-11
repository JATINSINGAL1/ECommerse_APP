import 'package:ecommerse/common/widgets/brands/brand_cards.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBrandShowcase extends StatelessWidget {
  const EBrandShowcase({
    super.key,
    required this.darkMode, required this.images,
  });
  final List<String> images; 
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
        showBorder: true,
        borderColor: EColors.darkGrey,
        backgroundColor: Colors.transparent,
        padding:const EdgeInsets.all(ESizes.sm) ,
        margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
        child: Column(
      children: [
        const EBrandCard(
          showBorder: false,
        ),
        const SizedBox(height: ESizes.spaceBtwItems,),
        Row(
          children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
        )
      ],
    ));
  }

  Widget brandTopProductImageWidget(String image,context){
    return Expanded(
      child: ERoundedContainer(
                  height: 100,
                  backgroundColor: darkMode?EColors.darkerGrey:EColors.light,
                  margin: const EdgeInsets.only(right: ESizes.sm),
                  padding: const EdgeInsets.all(ESizes.sm),
                  child: Image(image: AssetImage(image),fit: BoxFit.contain,)
                  ),
    );
  }
}
