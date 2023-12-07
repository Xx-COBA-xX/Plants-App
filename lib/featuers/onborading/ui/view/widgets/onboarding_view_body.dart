import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants_app_with_firebase/core/utils/app_router.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_simbal_efict.dart';
import 'costom_containder_with_border.dart';
import 'onboarding_custom_button.dart';
import 'onboarding_page_view.dart';

class OnBoradingViewBody extends StatefulWidget {
  const OnBoradingViewBody({super.key});

  @override
  State<OnBoradingViewBody> createState() => _OnBoradingViewBodyState();
}

class _OnBoradingViewBodyState extends State<OnBoradingViewBody>
    with SingleTickerProviderStateMixin {
  late final PageController pageController;
  late final AnimationController animationController;
  late final Animation<Offset> sliderAnimation;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    initSlideAnimation();
    super.initState();
  }

  void initSlideAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sliderAnimation = Tween<Offset>(
      begin: const Offset(2, .5),
      end: const Offset(1.5, .5),
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            OnBoradingPageView(
              pageController: pageController,
            ),
            Positioned(
              top: SizeConfig.screenHeight! * .025,
              left: 0,
              right: 0,
              child: Text(
                "Plant shope",
                textAlign: TextAlign.center,
                style: Styles.textStyle20,
              ),
            ),
            Positioned(
              top: SizeConfig.screenHeight! * .15,
              right: -190,
              child: const BuildContainerWithBorder(),
            ),
            Positioned(
              top: SizeConfig.screenHeight! * .42,
              left: -180,
              child: const BuildContainerWithBorder(),
            ),
            Positioned(
              top: SizeConfig.screenHeight! * .025,
              left: 20,
              child: const ContainerEfict(),
            ),
            Positioned(
              top: SizeConfig.screenHeight! * .42,
              right: 20,
              child: const ContainerEfict(),
            ),
            Positioned(
              bottom: SizeConfig.screenHeight! * .03,
              left: 0,
              right: 0,
              child: OnBoardingCustomButton(
                onPressed: () {
                  if (pageController.page == 2) {
                    GoRouter.of(context)
                        .pushReplacement(AppRouter.kHomeViewRouter);
                  } else {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
