// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'onboaring_conten.dart';


class OnBoradingPageView extends StatelessWidget {
  const OnBoradingPageView({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        OnBoardingContaine(
          description: "Worldwide detivery\n within 10-15 days",
          image: "assets/images/on1.png",
          title: "Palnt a\ntree for life",
        ),
        OnBoardingContaine(
          description: "Worldwide detivery\n within 10-15 days",
          image:
              "assets/images/houseplant-flowerpot-indoor-plant-potted-plants-ce37034e3a9e015d5a3b8414084cb77d.png",
          title: "Palnt a\ntree for life",
        ),
        OnBoardingContaine(
          description: "Worldwide detivery\n within 10-15 days",
          image: "assets/images/on3.png",
          title: "Palnt a\ntree for life",
        ),
      ],
    );
  }
}
