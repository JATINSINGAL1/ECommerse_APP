import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/enums.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EBrandTitleWithVerifiedIcon extends StatelessWidget {
  const EBrandTitleWithVerifiedIcon(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.textColor,
      this.iconColor = EColors.primary,
      this.textAlign = TextAlign.center,
      this.brandTextSizes = TextSizes.small});
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: EBrandTitleText(
            title: title,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
          ),
        ),
        const SizedBox(
          width: ESizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: ESizes.iconXs,
        )
      ],
    );
  }
}

class EBrandTitleText extends StatelessWidget {
  const EBrandTitleText(
      {super.key,
      required this.title,
      required this.textColor,
      required this.maxLines,
      required this.textAlign,
      required this.brandTextSize});
  final String title;
  final Color? textColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.labelMedium!.apply(color: textColor)
          : brandTextSize == TextSizes.medium
              ? Theme.of(context).textTheme.bodyLarge!.apply(color: textColor)
              : brandTextSize == TextSizes.large
                  ? Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: textColor)
                  : Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: textColor),
    );
  }
}
