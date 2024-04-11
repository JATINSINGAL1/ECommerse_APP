import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class ERatingProgressIndicator extends StatelessWidget {
  const ERatingProgressIndicator({
    super.key,
    required this.index,
    required this.value,
  });
  final int index;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              '$index',
              style: Theme.of(context).textTheme.bodyMedium,
            )),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: EColors.grey,
            borderRadius: BorderRadius.circular(7),
            valueColor: const AlwaysStoppedAnimation(EColors.primary),
          ),
        ),
      ],
    );
  }
}
