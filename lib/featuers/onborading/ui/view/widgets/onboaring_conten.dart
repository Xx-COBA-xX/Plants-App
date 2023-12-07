import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';


class OnBoardingContaine extends StatefulWidget {
  const OnBoardingContaine(
      {super.key,
      required this.image,
      required this.title,
      required this.description});
  final String image;
  final String title;
  final String description;

  @override
  State<OnBoardingContaine> createState() => _OnBoardingContaineState();
}

class _OnBoardingContaineState extends State<OnBoardingContaine>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    super.initState();
    initSlideAnimation();
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sliderAnimation = Tween<Offset>(
      begin: const Offset(0, -1),
      end: const Offset(0, .1),
    ).animate(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: SizeConfig.screenHeight! * .11,
        ),
        AnimatedBuilder(
          animation: sliderAnimation,
          builder: (context, _) => SlideTransition(
            position: sliderAnimation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                widget.title,
                style: Styles.textStyle24.copyWith(
                    fontSize: SizeConfig.screenHeight! * .06,
                    height: 1.1,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * .035,
        ),
        Image.asset(
          widget.image,
          height: 350,
          width: 100,
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * .015,
        ),
        Text(
          widget.description,
          style: Styles.textStyle16.copyWith(
              height: 1.1,
              fontWeight: FontWeight.w700,
              fontSize: SizeConfig.screenHeight! * .019),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
