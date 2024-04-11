import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EBillingPaymentSection extends StatelessWidget {
  const EBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ESectionHeading(
          heading: "Payment Method",
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: ESizes.spaceBtwSections / 2,
        ),
        Row(
          children: [
            ERoundedContainer(
              width: 60,
              height: 35,
              padding: const EdgeInsets.all(ESizes.sm),
              backgroundColor: EHelperFunctions.isDarkMode(context)? EColors.light:EColors.white,
                child: const Image(
              image: AssetImage(''), fit: BoxFit.contain,
            )),
            const SizedBox(width: ESizes.spaceBtwSections/2,),
            Text('Paypal',style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
