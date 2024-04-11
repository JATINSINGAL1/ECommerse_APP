import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ERoundedImage extends StatelessWidget {
  const ERoundedImage(
      {super.key,
      this.width,
      this.height,
      required this.imgUrl,
      this.applyImageRadius = true,
      this.border,
      this.radius = ESizes.md,
      this.isNetworkImage = false,
      this.fit = BoxFit.contain,
      this.backgroundColor ,
      this.padding,
      this.onPressed});

  final double? width, height;
  final String imgUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final double radius;
  final bool isNetworkImage;
  final BoxFit fit;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(color: backgroundColor,border: border, borderRadius: BorderRadius.circular(radius)),
        child:  ClipRRect(
          borderRadius: applyImageRadius? BorderRadius.circular(radius):BorderRadius.zero,
          child: Image(fit: fit, image: isNetworkImage? NetworkImage(imgUrl):AssetImage(imgUrl) as ImageProvider),
        ),
      ),
    );
  }
}
