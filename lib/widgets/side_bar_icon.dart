import 'package:flutter/material.dart';
import 'package:perplexity_clone/Theme/colors.dart';

class SideBarIcon extends StatelessWidget {
  final IconData icon;
  final String iconName;
  const SideBarIcon({super.key,required this.icon,required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: AppColors.iconGrey,),
        SizedBox(height: 6,),
        Text(iconName,style: TextStyle(color: AppColors.iconGrey,fontSize: 12),)
      ],
    );
  }
}