import 'package:ecommerse/common/styles/spacing_style.dart';
import 'package:ecommerse/features/authenticaton/screens/forgetpassword.dart';
import 'package:ecommerse/features/authenticaton/screens/signup.dart';
import 'package:ecommerse/navigation_menu.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // logo title subtitle
               Header(),

              /// form
               BodyForm(),

              //// divider
               divider(),

              SizedBox(height: ESizes.spaceBtwSections,),

              /// footer
              footer()
            ],
          ),
        ),
      ),
    );
  }
}

class divider extends StatelessWidget {
  const divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Divider(color: EColors.grey, thickness: 0.5,indent: 60,endIndent: 5,),
        Text(ETexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
        const Divider(color: EColors.grey, thickness: 0.5,indent: 5,endIndent: 60,),
      ],
    );
  }
}

class footer extends StatelessWidget {
  const footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
       Container( // to place icon image in specific way
       decoration: BoxDecoration(border: Border.all(color: EColors.grey),borderRadius: BorderRadius.circular(100)),
       child: IconButton(onPressed: (){}, icon: const Image( width: ESizes.iconMd,height: ESizes.iconMd, image: AssetImage(EImages.google))),
       ),
       const SizedBox(width: ESizes.spaceBtwItems,),
       Container( // to place icon image in specific way 
       decoration: BoxDecoration(border: Border.all(color: EColors.grey),borderRadius: BorderRadius.circular(100)),
       child: IconButton(onPressed: (){}, icon: const Image(width: ESizes.iconMd,height: ESizes.iconMd,image: AssetImage(EImages.facebook))),
       )
     ],
                  );
  }
}

class BodyForm extends StatelessWidget {
  const BodyForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ETexts.email,
              ),
            ),
            const SizedBox(
              height: ESizes.spaceBtwInputFields,
            ),
            // password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: ETexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: ESizes.inputFieldRadius / 2,
            ),
            // Remeber me or Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remeber me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(
                      ETexts.remeberMe,
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {Get.to(const ForgetPasswordScreen());},
                    child: const Text(ETexts.forgetPassword)),
                
              ],
              
            ),
                const SizedBox(
                  height: ESizes.spaceBtwInputFields,
                ),
                // sign in Button
                SizedBox(
                  width: double.maxFinite, // always think when to use this its 
                  child: ElevatedButton(
                    onPressed: () {Get.offAll(const SignUp());},
                    child: const Text(ETexts.signUp),
                  ),
                ),
               const SizedBox(height: ESizes.spaceBtwItems,),
                // Login Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {Get.offAll(const NavigationMenu());},
                    child: const Text(ETexts.loginIn),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(height: 150, image: AssetImage(EImages.lightAppLogo)),
        Text(
          ETexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: ESizes.sm,
        ),
        Text(
          ETexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
