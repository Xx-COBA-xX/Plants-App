// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../func/function.dart';
import '../utils/color.dart';
import '../utils/styles.dart';
import 'custom_icon_button.dart';

class CustomTextFiled extends StatefulWidget {
  const CustomTextFiled({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.isPassword,
    required this.textInputType,
    this.validator,
    this.onSaved,
    this.autovalidateMode,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final bool isPassword;
  final TextInputType textInputType;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final AutovalidateMode? autovalidateMode;

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: widget.autovalidateMode,
      onSaved: widget.onSaved,
      validator: widget.validator,
      keyboardType: widget.textInputType,
      obscureText: widget.isPassword && showPassword,
      decoration: InputDecoration(
        filled: true,
        fillColor: kFiledColor.withOpacity(0.5),
        border: AppFunctions.customBorder(),
        enabledBorder: AppFunctions.customBorder(),
        focusedBorder: AppFunctions.customBorder().copyWith(
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
        ),
        disabledBorder: AppFunctions.customBorder(),
        hintText: widget.hintText,
        hintStyle: Styles.textStyle16.copyWith(
          color: kGreyColor,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 15, left: 20),
          child: Icon(
            widget.icon,
            color: kGreyColor,
          ),
        ),
        suffixIcon: widget.isPassword
            ? CustomIconButton(
                icon: showPassword
                    ? CupertinoIcons.eye
                    : CupertinoIcons.eye_slash,
                onPressed: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
              )
            : null,
      ),
    );
  }
}
