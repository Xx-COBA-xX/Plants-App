import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/widgets/custom_icon_button.dart';
import 'build_plant_image.dart';
import 'custon_like_button_on_plant_itme.dart';

class PlantsListViewItem extends StatelessWidget {
  const PlantsListViewItem({
    Key? key,
    required this.image,
    required this.index,
  }) : super(key: key);
  final String image;
  final int index;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
      child: SizedBox(
        child: Stack(
          children: [
            BuildPlantImage(image: image),
             Positioned(
              right: 5,
              top: 5,
              child: CustomIconButton(
                icon: FontAwesomeIcons.heart,
                iconColor: kPrimaryColor,
                onPressed: (){},
              ),
            ),
            const Positioned(
              bottom: 5,
              right: 5,
              child: CustomIconButtonWithBorder(
                icon: Icons.shopping_cart,
              ),
            )
          ],
        ),
      ),
    );
  }
}
