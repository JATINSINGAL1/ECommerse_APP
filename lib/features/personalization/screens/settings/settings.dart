import 'package:ecommerse/common/list_tiles/setting_menu_tile.dart';
import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/customshapes/curved_widget.dart';
import 'package:ecommerse/features/personalization/screens/Profile/profile.dart';
import 'package:ecommerse/features/personalization/screens/address/address.dart';
import 'package:ecommerse/features/shop/screens/cart/cart.dart';
import 'package:ecommerse/features/shop/screens/order/orders.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            ECurvedWidget(
                child: Column(
              children: [
                EAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: EColors.white),
                  ),
                ),

                // user profile card
                 UserProfileTile(onPressed: ()=>Get.to(const ProfileScreen()),),
                const SizedBox(
                  height: ESizes.spaceBtwSections,
                ),
              ],
            )),
            // body

              Padding(
              padding: const EdgeInsets.all(ESizes.defautSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ESectionHeading(heading: "Account Settings", showActionButton:false, ),
                  const SizedBox(height: ESizes.spaceBtwItems,),
                  ESettingMenuTile(icon: Iconsax.safe_home, onPressed: () => Get.to(const UserAddressScreen()), title: "My Address", subtitle: "Set shopping delivery address"),
                  ESettingMenuTile(icon: Iconsax.shopping_cart, onPressed: ()=>Get.to(const CartScreen()), title: "My Cart", subtitle: "Add, remove product and move to checkout"),
                  ESettingMenuTile(icon: Iconsax.bag_tick, onPressed: ()=>Get.to(const OrderScreen()) , title: "My Orders", subtitle: "In-progress and Completed Orders"),
                  ESettingMenuTile(icon: Iconsax.bank, onPressed: (){}, title: "Bank Account", subtitle: "Set shopping delivery address"),
                  ESettingMenuTile(icon: Iconsax.discount_shape, onPressed: (){}, title: "My Coupans", subtitle: "List of all the discout coupans"),
                  ESettingMenuTile(icon: Iconsax.notification, onPressed: (){}, title: "Notifications", subtitle: "Set any kind of notification message"),
                  ESettingMenuTile(icon: Iconsax.security_card, onPressed: (){}, title: "Account Privacy", subtitle: "Set shopping delivery address"),

                  /// App Setting
                  const SizedBox(height: ESizes.spaceBtwSections,),
                    const ESectionHeading(heading: "App Settings", showActionButton:false, ),
                  const SizedBox(height: ESizes.spaceBtwItems,),
                  ESettingMenuTile(icon: Iconsax.document_upload, onPressed: (){}, title: "Load Data", subtitle: "Upload Data to Cloud Firebase"),
                  ESettingMenuTile(icon: Iconsax.location, onPressed: (){}, title: "Geo Location", subtitle: "Upload Data to Cloud Firebase",trailing: Switch(value: false,onChanged: (Value){},),),
                  ESettingMenuTile(icon: Iconsax.security_user, onPressed: (){}, title: "Safe Mode", subtitle: "Upload Data to Cloud Firebase",trailing: Switch(value: false,onChanged: (Value){},),),
                  ESettingMenuTile(icon: Iconsax.image, onPressed: (){}, title: "HD Image Quality", subtitle: "Upload Data to Cloud Firebase",trailing: Switch(value: false,onChanged: (Value){},),),

                  // logout button
                  const SizedBox(height: ESizes.spaceBtwSections,),
                  SizedBox(width: double.infinity,child: OutlinedButton(onPressed: (){},child: const Text("Logout"),),),      
                  const SizedBox(height: ESizes.spaceBtwSections*2.5,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
