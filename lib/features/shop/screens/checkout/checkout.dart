import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/features/authenticaton/screens/successscreen.dart';
import 'package:ecommerse/features/shop/screens/cart/cart_items.dart';
import 'package:ecommerse/features/shop/screens/checkout/address_section.dart';
import 'package:ecommerse/features/shop/screens/checkout/billing_address.dart';
import 'package:ecommerse/features/shop/screens/checkout/billing_section.dart';
import 'package:ecommerse/navigation_menu.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ECheckoutScreen extends StatelessWidget {
  const ECheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            children: [
              const ECartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              const ECoupanCode(),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              // Billing Section
              ERoundedContainer(
                padding: const EdgeInsets.all(ESizes.defautSpace),
                showBorder: true,
                backgroundColor: EHelperFunctions.isDarkMode(context)
                    ? EColors.black
                    : EColors.white,
                child: const Column(
                  children: [
                    /// Pricing
                    EBillingAmmountScreen(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Divider
                    Divider(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Payment Method
                    EBillingPaymentSection(),
                    SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),

                    /// Address
                    EBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(ESizes.defautSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(SuccessScreen(
                image: '',
                title: 'Payment Success!',
                subtitle: 'Your Item will be shipped soon!',
                onPressed: ()=>Get.to(const NavigationMenu()))),
            child: const Text("CheckOut \$256")),
      ),
    );
  }
}

class ECoupanCode extends StatelessWidget {
  const ECoupanCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ERoundedContainer(
        showBorder: true,
        backgroundColor:
            EHelperFunctions.isDarkMode(context) ? EColors.dark : EColors.white,
        padding: const EdgeInsets.only(
            top: ESizes.sm,
            bottom: ESizes.sm,
            right: ESizes.sm,
            left: ESizes.md),
        child: Row(
          children: [
            Flexible(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Have a Promo code? Enter here",
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
                width: 80,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: EHelperFunctions.isDarkMode(context)
                            ? EColors.white.withOpacity(0.5)
                            : EColors.dark.withOpacity(0.5),
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                    onPressed: () {},
                    child: const Text('Apply')))
          ],
        ));
  }
}
