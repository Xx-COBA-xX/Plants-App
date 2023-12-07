import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class BuildNewSectionTitle extends StatelessWidget {
  const BuildNewSectionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Ageratum",
          style: Styles.textStyle24.copyWith(fontWeight: FontWeight.w800),
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              size: 20,
              color: kPrimaryColor,
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: "4.8",
                  style:
                      Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "(268 Reviews)",
                  style: Styles.textStyle16.copyWith(fontSize: 14),
                ),
              ]),
            )
          ],
        )
      ],
    );
  }
}
