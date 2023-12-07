// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/widgets/custom_icon_button.dart';

class CustomIconButtonWithBorder extends StatelessWidget {
  const CustomIconButtonWithBorder({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: kPrimaryColor)),
      child: CustomIconButton(
        icon: icon,
        iconColor: kPrimaryColor,
        onPressed: () {},
        
      ),
    );
  }
}
