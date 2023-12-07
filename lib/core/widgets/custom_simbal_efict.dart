import 'package:flutter/material.dart';

import '../utils/color.dart';

class ContainerEfict extends StatelessWidget {
  const ContainerEfict({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.02),
          boxShadow: [
            BoxShadow(
                color: kPrimaryColor.withOpacity(0.08),
                blurRadius: 20,
                spreadRadius: 80)
          ]),
    );
  }
}
