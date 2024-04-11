import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/constants/images_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../image/rounded_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, this.onPressed,
  });
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ERoundedImage(
          width: 50,
          height: 50,
          radius: 50,
          padding: EdgeInsets.zero,
          imgUrl: EImages.user),
      title: Text(
        'Coding With Jatin',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: EColors.white),
      ),
      subtitle: Text(
        'jatinsingal238@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: EColors.white),
      ),
      trailing: IconButton(
        onPressed:onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: EColors.white,
        ),
      ),
    );
  }
}
