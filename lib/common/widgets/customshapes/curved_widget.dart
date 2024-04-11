import 'package:flutter/material.dart';

import '../../../features/shop/screens/curved_edges.dart';
import '../../../utils/constants/colors.dart';

class ECurvedWidget extends StatelessWidget {
  const ECurvedWidget({
    super.key,required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECustomCurvedEdges(),
      child: Container(
        color: EColors.primary,
        padding: const EdgeInsets.all(0),
        child:  Stack(
          children: [
            // to position things we will use positioned widget within stack
            const Positioned(
                top: -150, right: -250, child: ECircularContainer()),
            const Positioned(
                top: 100, right: -300, child: ECircularContainer()),
            child,
          ],
        ),
      ),
    );
  }
}


// this is basically a custom shape below which can be changed as per our needs
class ECircularContainer extends StatelessWidget {
  const ECircularContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: EColors.textWhite.withOpacity(0.1),
          borderRadius: BorderRadius.circular(400)),
    );
  }
}
