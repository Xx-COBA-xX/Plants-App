import 'package:flutter/material.dart';


import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import 'custon_like_button_on_plant_itme.dart';

class CoustmAppBar extends StatelessWidget {
  const CoustmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.defaultSize! * 8,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomIconButtonWithBorder(
              icon: Icons.arrow_back,
            ),
            Text(
              "Details",
              style: Styles.textStyle20.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const CustomIconButtonWithBorder(
              icon: Icons.favorite_border,
            ),
          ],
        ),
      ),
    );
  }
}
