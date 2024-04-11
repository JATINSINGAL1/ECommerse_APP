import 'package:ecommerse/features/personalization/screens/settings/settings.dart';
import 'package:ecommerse/features/shop/screens/home/home.dart';
import 'package:ecommerse/features/shop/screens/store/store.dart';
import 'package:ecommerse/features/shop/screens/wishlist/wishlist.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key, });
  

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        // Obx is a observer which observe the changes and reflect it in the given case
        () => NavigationBar(
          // there are few things in navigation state you need to understand.
          backgroundColor: darkMode ? EColors.black : Colors.white,
          indicatorColor: darkMode
              ? EColors.white.withOpacity(0.1)
              : EColors.black.withOpacity(0.1),
          height: 80,
          elevation: 0,
          selectedIndex:  controller.selectedIndex.value ,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

// Navigation Controller
class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishlistScreen(),
    const SettingsScreen(),
  ];
  // above container will be changed to different screens
}
