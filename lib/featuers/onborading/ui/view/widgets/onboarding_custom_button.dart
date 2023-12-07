// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class OnBoardingCustomButton extends StatelessWidget {
  const OnBoardingCustomButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: kPrimaryColor,
        child: Text(
          "GO",
          style: Styles.textStyle20
              .copyWith(fontWeight: FontWeight.bold, color: kWhiteColor),
        ),
      ),
    );
  }
}
