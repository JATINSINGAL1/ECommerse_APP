

import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class ECiricluarIcon extends StatelessWidget {
  const ECiricluarIcon(
      {super.key,
      required this.icon,
      this.backgroundColor,
      this.color,
      this.onPressed,
      this.width,
      this.height,
      this.size=ESizes.lg});
  final IconData icon;
  final Color? backgroundColor;
  final Color? color;
  final VoidCallback? onPressed;
  final double? width, height, size;
  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor!= null?
          backgroundColor!:
          darkMode
              ? EColors.black.withOpacity(0.9)
              : EColors.light.withOpacity(0.9)),
      child: IconButton(onPressed:onPressed, icon:  Icon(icon,color: color,size: size,)),
    );
  }
}
