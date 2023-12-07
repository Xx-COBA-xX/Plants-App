import 'package:flutter/material.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';

class BuildPlantItmeInfo extends StatelessWidget {
  const BuildPlantItmeInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5),
      child: Column(
        children: [
          Text(
            "Plant Name",
            style: Styles.textStyle16,
          ),
          Text(
            "50\$",
            style: Styles.textStyle20,
          ),
        ],
      ),
    );
  }
}
