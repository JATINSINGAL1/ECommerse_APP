import 'package:ecommerse/features/authenticaton/screens/login.dart';
import 'package:ecommerse/features/authenticaton/screens/successscreen.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/constants/texts.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.offAll(const LoginPage());
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            children: [
              Image(
                  width: EHelperFunctions.screenWidth() * 0.6,
                  image: const AssetImage(EImages.verificationImage)),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              Text(
                ETexts.verifyemail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Text(
                'support@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              Text(
                ETexts.verificationMessage,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(SuccessScreen(
                        image: EImages.successImage,
                        title: ETexts.successTitle,
                        subtitle: ETexts.successMessage,
                        onPressed: () {
                          Get.to(const LoginPage());
                        },
                      ));
                    },
                    child: const Text(ETexts.continueText)),
              ),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(ETexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
