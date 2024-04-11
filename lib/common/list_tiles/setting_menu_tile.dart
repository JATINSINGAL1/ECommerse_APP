import 'package:ecommerse/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ESettingMenuTile extends StatelessWidget {
  const ESettingMenuTile(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.title,
      required this.subtitle, this.trailing});
  final IconData icon;
  final VoidCallback onPressed;
  final String title;
  final String subtitle;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: 
         Icon(icon,size: 28,color: EColors.white,),
       
        
      
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
      onTap:  onPressed,
    );
  }
}
