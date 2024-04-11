import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ECircularImage extends StatelessWidget {
  const ECircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.padding = ESizes.sm,
    this.overlayColor,
    this.isNetorkImgae = false,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
  });

  final double width, height, padding;
  final Color? overlayColor;
  final bool isNetorkImgae;
  final Color? backgroundColor;
  final String image;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Container(
      height: height,
      width: width,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: darkMode ? EColors.black : EColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image:isNetorkImgae? NetworkImage(image): AssetImage(image) as ImageProvider  ,
        color:overlayColor,
      ),
    );
  }
}
