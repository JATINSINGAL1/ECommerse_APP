import 'package:ecommerse/features/shop/screens/ProductReview/productreview.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../common/widgets/customshapes/text_box.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = EHelperFunctions.isDarkMode(context);
    return Column(
      // title row
      children: [
        // heading 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // below will be converted into custom widget name circleAvatar
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                      color: EColors.white,
                      borderRadius: BorderRadius.circular(54)),
                  child: const Image(fit: BoxFit.fill, image: AssetImage('')),
                ),
                const SizedBox(
                  width: ESizes.spaceBtwItems,
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),
        
        // rating 
        Row(
          children: [
            const StarIndicator(
              rating: 3.5,
            ),
            const SizedBox(
              width: ESizes.spaceBtwItems,
            ),
            Text(
              '01 NOV 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        // comment by user
        const ReadMoreText(
          'The user interface of the app is quite interactive. I was able to navigate and make purchases seamlessly.Great job!',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
        ),
        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        // comment by company
        ERoundedContainer(
          backgroundColor: darkMode ? EColors.darkerGrey : EColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ESizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "J's Store",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '20 March 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    
                  ],
                ),
                const SizedBox(
                      height: ESizes.spaceBtwItems,
                    ),
                    const ReadMoreText(
                      'The user interface of the app is quite interactive. I was able to navigate and make purchases seamlessly.Great job!',
                      trimLines: 1,
                      trimMode: TrimMode.Line,
                      trimExpandedText: ' show less',
                      trimCollapsedText: ' show more',
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: EColors.primary),
                      lessStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: EColors.primary),
                    ),
              ],
            ),
          ),
        ),
        const SizedBox(height:ESizes.spaceBtwSections ,)
      ],
    );
  }
}