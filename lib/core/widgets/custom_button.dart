import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.width,
    this.onPressed,
    required this.bgColor,
    required this.title,
    required this.fgColor,
  }) : super(key: key);

  final double? width;
  final void Function()? onPressed;
  final Color bgColor;
  final String title;
  final Color fgColor;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        height: 56,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            title,
            style: Styles.textStyle18.copyWith(
              color: fgColor,
            ),
          ),
        ),
      ),
    );
  }
}
