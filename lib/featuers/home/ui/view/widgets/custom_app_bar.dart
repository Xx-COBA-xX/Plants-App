import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Find your\nfavorite plants",
            style: Styles.textStyle28.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: SizeConfig.screenHeight! * .033,
              height: 1.2,
            ),
          ),
          CustomIconButton(
            icon: FontAwesomeIcons.magnifyingGlass,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
