import 'package:flutter/material.dart';

class ESectionHeading extends StatelessWidget {
  const ESectionHeading({
    super.key,
    required this.heading,
    this.buttonTitle='View all',
    this.showActionButton=true,
    this.textColor,
    this.onPressed, 
  });
  final String heading;
  final String? buttonTitle;
  final bool showActionButton;
  final Color? textColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle!)),
      ],
    );
  }
}