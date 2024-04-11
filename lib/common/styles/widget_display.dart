import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class EGridDisplay extends StatelessWidget {
  const EGridDisplay({
    super.key, required this.itemCount, required this.widget, this.mainAxisExtent=290,
  });
  final double mainAxisExtent;
  final int itemCount;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        gridDelegate:   SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: ESizes.girdViewSpacing,
            crossAxisSpacing: ESizes.girdViewSpacing,
            mainAxisExtent: mainAxisExtent, // basically height of child 
            ),
        itemBuilder: (context, index) {
          // widget will be changed and things will be done
          return widget;
        },);
  }
}