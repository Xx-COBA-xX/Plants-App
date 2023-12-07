import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BuildFutersOfPlant extends StatelessWidget {
  const BuildFutersOfPlant({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.textStyle16.copyWith(fontSize: 14),
        ),
        Text(
          subTitle,
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
