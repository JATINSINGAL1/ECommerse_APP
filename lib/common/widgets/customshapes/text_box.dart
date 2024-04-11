import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ERoundedContainer extends StatelessWidget {
  const ERoundedContainer(
      {super.key,
      required this.child,
      this.backgroundColor = EColors.white,
      this.width,
      this.height,
      this.radius = ESizes.cardRadiusLg,
      this.showBorder = false,
      this.borderColor = EColors.borderPrimary,
      this.padding,
      this.margin});

  final double? width;
  final double? height;
  final double radius;
  final bool showBorder;
  final Widget child;
  final Color backgroundColor;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
