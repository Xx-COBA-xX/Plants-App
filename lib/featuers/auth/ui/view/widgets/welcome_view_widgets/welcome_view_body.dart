// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../../../core/func/function.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/color.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: SizeConfig.screenHeight,
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Wellcome to\nPlantopia 🌿 store",
              style: Styles.textStyle28.copyWith(fontSize: 38),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(
            height: 128,
          ),
          Text(
            "Les't shop",
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            width: SizeConfig.screenWidth,
            onPressed: () {
              AppFunctions.goToNextView(
                router: AppRouter.kLoginViewRouter,
                context: context,
              );
            },
            title: "Login",
            bgColor: kPrimaryColor,
            fgColor: kWhiteColor,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomButton(
            width: SizeConfig.screenWidth,
            onPressed: () {},
            title: "Sign up",
            bgColor: kWhiteColor,
            fgColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
