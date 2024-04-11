import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/device/device_utility.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget{
  const ETabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Material(
      color: darkMode? EColors.dark:EColors.light,
      child: TabBar(
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    indicatorColor: EColors.primary,
                    unselectedLabelColor: EColors.darkGrey,
                    labelColor: darkMode? EColors.white:EColors.primary,
      
                    tabs:tabs),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}