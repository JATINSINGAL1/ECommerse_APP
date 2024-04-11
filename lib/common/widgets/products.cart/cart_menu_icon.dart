import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ECartCounterIcon extends StatelessWidget {
  const ECartCounterIcon({
    super.key,  required this.onPressed,
  });
  
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    final darkMode=EHelperFunctions.isDarkMode(context);
    return Stack(
      
      children: [
      IconButton(
          onPressed: onPressed,
          icon:  Icon(
            Iconsax.shopping_bag,
            color: darkMode? EColors.light:EColors.black,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 20,
          height: 20,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color:darkMode? EColors.dark: EColors.light,
            borderRadius: BorderRadius.circular(100)),
            child:  Center(child: Text('2',style: Theme.of(context).textTheme.labelLarge!.apply(fontSizeFactor: 0.9),),),
        ),
      )
    ]);
  }
}