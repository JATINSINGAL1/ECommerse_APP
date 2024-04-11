import 'package:ecommerse/common/widgets/appBar/custom_appbar.dart';
import 'package:ecommerse/features/shop/screens/ProductReview/progress_widget.dart';
import 'package:ecommerse/features/shop/screens/ProductReview/review_card_widget.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';


class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EAppBar(
        title: Text("Reviews & Ratings"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defautSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Rating and reviews are verified and are form people who use the same type of product that you use."),
              const SizedBox(
                height: ESizes.spaceBtwItems,
              ),

              /// overal product rating
              const OverallProductRating(),
              const StarIndicator(
                rating: 2.5,
              ),
              Text(
                '12,124',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),

              // User Review list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}



class StarIndicator extends StatelessWidget {
  const StarIndicator({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: rating,
      unratedColor: EColors.grey,
      itemSize: 20,
      itemBuilder: (context, index) {
        return const Icon(
          Iconsax.star1,
          color: EColors.primary,
        );
      },
    );
  }
}

class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              '4.8',
              style: Theme.of(context).textTheme.displayLarge,
            )),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              ERatingProgressIndicator(
                index: 5,
                value: 0.4,
              ),
              ERatingProgressIndicator(
                index: 4,
                value: 0.6,
              ),
              ERatingProgressIndicator(
                index: 3,
                value: 0.5,
              ),
              ERatingProgressIndicator(
                index: 2,
                value: 0.8,
              ),
              ERatingProgressIndicator(
                index: 1,
                value: 0.2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
