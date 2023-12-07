import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';

class BuildContainerWithBorder extends StatelessWidget {
  const BuildContainerWithBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kGreyColor.withOpacity(0.3),
          )),
    );
  }
}
