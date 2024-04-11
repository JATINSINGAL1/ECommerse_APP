import 'package:ecommerse/common/image/circular_image.dart';
import 'package:ecommerse/common/texts/brand_title.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/enums.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBrandCard extends StatelessWidget {
  const EBrandCard({super.key, this.onTap, required this.showBorder});
  final VoidCallback? onTap;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    final darkMode=EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: ERoundedContainer(
          showBorder: showBorder,
          padding: const EdgeInsets.all(ESizes.sm),
          backgroundColor: Colors.transparent,
          child: Row(
            children: [
              // Icon
              Flexible(
                child: ECircularImage(
                  image: EImages.bowling,
                  backgroundColor: Colors.transparent,
                  isNetorkImgae: false,
                  overlayColor: darkMode ? EColors.white : EColors.black,
                ),
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems/2,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const EBrandTitleWithVerifiedIcon(
                      title: 'Nike',
                      brandTextSizes: TextSizes.large,
                    ),
                    Text(
                      "256 products",
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelMedium,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
