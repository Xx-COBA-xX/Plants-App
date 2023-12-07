import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size_config.dart';
import 'ads_page_view_item.dart';

class AdsPageView extends StatelessWidget {
  const AdsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight! * .21,
      child: PageView(
        children: [
          AdsPageViewItem(
            image: Assets.adsImage,
          ),
          AdsPageViewItem(
            image: Assets.adsImage2,
          ),
          AdsPageViewItem(
            image: Assets.adsImage3,
          ),
        ],
      ),
    );
  }
}
