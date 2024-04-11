import 'package:ecommerse/common/widgets/TextWidget/section_title.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class EBillingAddressSection extends StatelessWidget {
  const EBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ESectionHeading(
          heading: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text(
          "Jatin Singal",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '91-82228-88336',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '238, Sunder Nagar',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ),
          ],
        ),
      ],
    );
  }
}
