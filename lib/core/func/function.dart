import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppFunctions {
  static goToNextView({required String router, required BuildContext context}) {
    GoRouter.of(context).pushReplacement(router);
  }

  static OutlineInputBorder customBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
  }
}
