import 'package:ecommerse/features/authenticaton/controllers.onboarding/signup/signup_controller.dart';
import 'package:ecommerse/features/authenticaton/screens/verificationscreen.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/constants/texts.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:ecommerse/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // this is a default app bar with just back arrow
      body: const SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
               Title(),
               SizedBox(height: ESizes.spaceBtwSections,),
              // Form
               InputForm(),
               SizedBox(height: ESizes.spaceBtwSections,),
              // Terms and Condition
               TermsandCondition(),
               SizedBox(height: ESizes.spaceBtwSections,),
              // create account button
               AccountButton(),
               SizedBox(height: ESizes.spaceBtwSections,),
              // divider
               divider(),
               SizedBox(height: ESizes.spaceBtwSections,),
              //footer
               Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ETexts.signupTiltle,
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SignupController());
    return  Form(
      key: controller.signupFormKey,
        child: Column(
      children: [
        Row(
          
          children: [
             Flexible(
              child: TextFormField(
                controller: controller.firstName,
                validator: (value)=>EValidator.validateEmptyText('First name', value),
                decoration:const  InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: ETexts.firstName,
                ),
              ),
            ),
             const SizedBox(width: ESizes.spaceBtwInputFields,),
             Flexible(
              child: TextFormField(
                controller: controller.lastName,
                validator: (value)=>EValidator.validateEmptyText('last name', value),
                decoration:const InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: ETexts.lastName,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFields,
        ),
        TextFormField(
          controller: controller.userName,
          validator: (value) => EValidator.validateEmptyText('user name', value),
          decoration:const InputDecoration(
            prefixIcon: Icon(Iconsax.user_edit),
            labelText: ETexts.userName,
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFields,
        ),
        TextFormField(
          validator: (value) => EValidator.validateEmail(value),
          controller: controller.email,
          decoration:const InputDecoration(
            prefixIcon: Icon(Iconsax.direct),
            labelText: ETexts.email,
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFields,
        ),
        TextFormField(
          controller: controller.phoneNumber,
          validator: (value) => EValidator.validPhoneNO(value),
          decoration:const InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: ETexts.phoneNo,
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwInputFields,
        ),
        TextFormField(
          validator: (value)=>EValidator.validatePassword(value),
          controller: controller.password,
          decoration:const InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: ETexts.password,
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
      ],
    ));
  }
}

class TermsandCondition extends StatelessWidget {
  const TermsandCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark=EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(height: 24,width: 24, child: Checkbox( value: true, onChanged: (value){})),
        const SizedBox(width: ESizes.spaceBtwItems/2,),
        Text.rich(
          TextSpan(children: [
            TextSpan(text: 'I agree to ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: 'Privacy Policy ',style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? EColors.white: EColors.primary,
              decoration:  TextDecoration.underline,
              decorationColor: dark ? EColors.white: EColors.primary,
            )),
            TextSpan(text: 'and ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: 'Terms of use',style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark ? EColors.white: EColors.primary,
              decoration:  TextDecoration.underline,
              decorationColor: dark ? EColors.white: EColors.primary,
            )),
          ])
        )
      ],
    );
  }
}

class AccountButton extends StatelessWidget {
  const AccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: (){Get.to(const VerificationScreen());}, child: const Text(ETexts.createAccount),),
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

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // to place icon image in specific way
          decoration: BoxDecoration(
              border: Border.all(color: EColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ESizes.iconMd,
                  height: ESizes.iconMd,
                  image: AssetImage(EImages.google))),
        ),
        const SizedBox(
          width: ESizes.spaceBtwItems,
        ),
        Container(
          // to place icon image in specific way
          decoration: BoxDecoration(
              border: Border.all(color: EColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: ESizes.iconMd,
                  height: ESizes.iconMd,
                  image: AssetImage(EImages.facebook))),
        )
      ],
    );
  }
}
