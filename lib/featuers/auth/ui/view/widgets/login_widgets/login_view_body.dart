import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plants_app_with_firebase/core/func/function.dart';
import 'package:plants_app_with_firebase/core/utils/size_config.dart';


import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_button.dart';
import '../../../../../../core/widgets/custom_text_filed.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> myKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextInputType emailType = TextInputType.emailAddress;

  final TextInputType passwordType = TextInputType.visiblePassword;

  String password = '';

  String email = '';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            Assets.loginBg,
            height: 350,
            width: 250,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: SizeConfig.screenHeight,
            width:SizeConfig.screenWidth,
            decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wellcome Back!",
                  style:
                      Styles.textStyle24.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Sigin in your account",
                  style: Styles.textStyle16.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 64,
                ),
                Form(
                  key: myKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextFiled(
                        autovalidateMode: autovalidateMode,
                        hintText: "Emaill address",
                        icon: FontAwesomeIcons.envelope,
                        isPassword: false,
                        textInputType: emailType,
                        onSaved: (userEmail) {
                          email = userEmail!;
                        },
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return "This filed is required";
                          } else if (email.contains(" ") ||
                              !email.contains("@gmail.com")) {
                            return "Please enter a valid email";
                          } else if (email.length < 14) {
                            return "Your email too short";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomTextFiled(
                        autovalidateMode: autovalidateMode,
                        hintText: "password",
                        icon: Icons.lock_outline_rounded,
                        isPassword: true,
                        textInputType: emailType,
                        onSaved: (userPassword) {
                          password = userPassword!;
                        },
                        validator: (pass) {
                          if (pass == null || pass.isEmpty) {
                            return "This filed is required";
                          } else if (pass.length < 4) {
                            return "This password is too short";
                          } else if (pass.length > 40) {
                            return "This password is too long";
                          } else if (pass.contains(" ")) {
                            return "Please enter a valid password";
                          }
                          return null;
                        },
                      ),
                      CustomTextButton(
                        title: "Forgot Password ?",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomButton(
                  width:    SizeConfig.screenWidth
,
                  bgColor: kPrimaryColor,
                  title: "Login",
                  fgColor: kWhiteColor,
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      myKey.currentState!.save();
                      AppFunctions.goToNextView(
                          router: AppRouter.kHomeViewRouter, context: context);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?"),
                    CustomTextButton(
                      title: " Sign Up",
                      onPressed: () {
                        AppFunctions.goToNextView(
                          router: AppRouter.kSignupViewRouter,
                          context: context,
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
