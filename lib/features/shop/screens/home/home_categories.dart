import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EHomeCategories extends StatelessWidget {
  const EHomeCategories({super.key, this.ontap});
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
                    height: 100,
                    width: 45,
                    padding: const EdgeInsets.all(ESizes.sm),
                    margin: const EdgeInsets.all(ESizes.sm),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: EColors.white),
                    child: const Center(
                      child: Image(
                        image: AssetImage(EImages.bowling),
                        fit: BoxFit.cover,
                        // color: EColors.dark,
                      ),
                    ),
                  ),
    );
  }
}