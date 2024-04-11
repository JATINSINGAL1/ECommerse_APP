import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
// making of fully reusabale appbar
class EAppBar extends StatelessWidget implements PreferredSizeWidget{
  const EAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow=false,});

    final Widget? title;
    final List<Widget>? actions;
    final bool showBackArrow;
    final IconData? leadingIcon;
    final VoidCallback? leadingOnPressed;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading:showBackArrow ? IconButton(onPressed: () => Get.back(),icon: const Icon(Iconsax.arrow_left),color: EColors.white,)
        :leadingIcon!=null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)):null,
        title: title,
        actions: actions,
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());

}