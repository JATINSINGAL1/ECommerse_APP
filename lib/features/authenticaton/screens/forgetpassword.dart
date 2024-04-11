import 'package:ecommerse/features/authenticaton/screens/emailsent.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Text('Forget Password',style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: ESizes.spaceBtwItems,),
              Text(ETexts.forgetPasswordMessage,style: Theme.of(context).textTheme.labelMedium,),
              const SizedBox(height: ESizes.spaceBtwSections*2,),
              const TextField(
               decoration: InputDecoration(
               prefixIcon: Icon(Iconsax.direct),
               labelText: ETexts.email,
               ),
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){Get.off(const EmailSent());}, child: const Text('Submit')),
             )
            ],
          ),
        ),
      ),
    );
  }
}