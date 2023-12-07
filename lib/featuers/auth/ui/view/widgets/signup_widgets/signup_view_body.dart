// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../../../../../core/func/function.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color.dart';
import '../../../../../../core/utils/size_config.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_button.dart';
import '../../../../../../core/widgets/custom_text_filed.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _key = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  final TextInputType emailType = TextInputType.emailAddress;
  final TextInputType passwordType = TextInputType.visiblePassword;
  final TextInputType nameType = TextInputType.name;

  bool agree = false;
  String userName = '';
  String password = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

  
    return Stack(
      children: [
        Positioned(
          bottom: -40,
          right: 0,
          left: 0,
          child: Image.asset(
            Assets.siginBg,
            height: 350,
            width: 250,
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: SizeConfig.screenHeight,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(color: kWhiteColor.withOpacity(0.5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's Get Started",
                  style:
                      Styles.textStyle24.copyWith(fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Create new account",
                  style: Styles.textStyle16.copyWith(fontSize: 14),
                ),
                const SizedBox(
                  height: 64,
                ),
                Form(
                  key: _key,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextFiled(
                        autovalidateMode: autovalidateMode,
                        hintText: "Username",
                        icon: CupertinoIcons.person,
                        isPassword: false,
                        textInputType: nameType,
                        onSaved: (username) {
                          username = username!;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "this field is required";
                          } else if (value.contains(" ")) {
                            return "please enter a valid username";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomTextFiled(
                        autovalidateMode: autovalidateMode,
                        hintText: "Emaill address",
                        icon: FontAwesomeIcons.envelope,
                        isPassword: false,
                        textInputType: emailType,
                        onSaved: (mail) {
                          email = mail!;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "this field is required";
                          } else if (!value.contains("@gmail.com")) {
                            return "please enter a valid email address";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomTextFiled(
                        hintText: "password",
                        autovalidateMode: autovalidateMode,
                        icon: Icons.lock_outline_rounded,
                        isPassword: true,
                        textInputType: emailType,
                        onSaved: (pass) {
                          password = pass!;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "this field is required";
                          } else if (value.length < 4) {
                            return "the passowrd cannot be less than 4 characters";
                          } else if (value.length > 40) {
                            return "the passowrd cannot be more than 40 characters";
                          } else if (value.contains(" ")) {
                            return "the password must don't contain ' '";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: agree,
                            onChanged: (newValue) {
                              setState(() {
                                agree = !agree;
                              });
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "By signing up you cyee to the Terms\n Service and Privacy Pobcy",
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomButton(
                  width: SizeConfig.screenWidth,
                  bgColor: kPrimaryColor,
                  title: "Sign up",
                  fgColor: kWhiteColor,
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      _key.currentState!.save();
                      AppFunctions.goToNextView(
                        router: AppRouter.kHomeViewRouter,
                        context: context,
                      );
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
                    const Text("You have an account ?"),
                    CustomTextButton(
                      title: " Log In",
                      onPressed: () {
                        AppFunctions.goToNextView(
                          router: AppRouter.kLoginViewRouter,
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
