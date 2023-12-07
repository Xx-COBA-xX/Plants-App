import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';

class AdsPageViewItem extends StatelessWidget {
  const AdsPageViewItem({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: SizeConfig.screenHeight! * .17,
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "30% OFF",
                      style: Styles.textStyle28,
                    ),
                    Text(
                      "02 - 23 July",
                      style: Styles.textStyle20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            child: Image.asset(
              image,
              height: 170,
            ),
          ),
        ],
      ),
    );
  }
}
