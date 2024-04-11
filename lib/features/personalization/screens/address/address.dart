import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EAppBar(
        showBackArrow: true,
        title: Text(
          "Address",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: EColors.primary,
        onPressed: () => Get.to(const AddNewAddressScreen()),
        child: const Icon(
          Iconsax.add,
          color: EColors.white,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            children: [
              ESingleAddress(
                selectedAddress: true,
              ),
              ESingleAddress(
                selectedAddress: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ESingleAddress extends StatelessWidget {
  const ESingleAddress({
    super.key,
    required this.selectedAddress,
  });
  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return ERoundedContainer(
      padding: const EdgeInsets.all(ESizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? EColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : darkMode
              ? EColors.darkerGrey
              : EColors.grey,
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 10,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? darkMode
                      ? EColors.light
                      : EColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jatin Singal',
                style: Theme.of(context).textTheme.titleLarge,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: ESizes.sm/2,
              ),
              const Text('+91 8222888336',maxLines: 1,overflow: TextOverflow.ellipsis,),
              const SizedBox(
                height: ESizes.sm/2,
              ),
              const Text('238, Sunder Nagar Hisar,India',softWrap: true,)
            ],
          )
        ],
      ),
    );
  }
}
