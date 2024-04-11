import 'package:ecommerse/common/widgets/customshapes/text_box.dart';
import 'package:ecommerse/utils/constants/colors.dart';
import 'package:ecommerse/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomChips extends StatelessWidget {
  const CustomChips(
      {super.key, required this.text, required this.selected, this.onSelected});

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = EHelperFunctions.getColor(text)!=null;
    return ChoiceChip(
      label:isColor? const SizedBox(): Text(text),
      selected: selected,
      onSelected: onSelected,
      labelStyle: TextStyle(color: selected ? EColors.white : null),
      avatar: isColor? ERoundedContainer(width: 50,height: 50,radius: 100,backgroundColor: EHelperFunctions.getColor(text)!, child: const SizedBox()):null,
      labelPadding:isColor? EdgeInsets.zero:null,
      padding:isColor? EdgeInsets.zero:null,
      shape:isColor?  const CircleBorder():null,
      backgroundColor:isColor? EHelperFunctions.getColor(text)!:null ,
    );
  }
}
