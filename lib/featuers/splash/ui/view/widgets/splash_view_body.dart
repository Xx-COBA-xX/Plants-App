import 'package:flutter/material.dart';
import 'package:plants_app_with_firebase/core/utils/assets.dart';
import 'package:plants_app_with_firebase/core/utils/color.dart';



class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: kPrimaryColor),
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.logo),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
