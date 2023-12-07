import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class CustomCategoryPlantsItem extends StatelessWidget {
  const CustomCategoryPlantsItem(
      {Key? key,
      required this.plantType,
      required this.index,
      this.onPressed,
      required this.currentIndex})
      : super(key: key);
  final String plantType;
  final int index;
  final void Function()? onPressed;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: AnimatedContainer(
        duration: const Duration(microseconds: 100),
        margin: EdgeInsets.only(left: index == 0 ? 20 : 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
                color: currentIndex == index
                    ? kGreyColor
                    : kGreyColor.withOpacity(0.3),
                )),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          style: Styles.textStyle18.copyWith(
            color: currentIndex == index
                ? kGreyColor
                : kGreyColor.withOpacity(0.3),
          ),
          child: Text(
            plantType,
          ),
        ),
      ),
    );
  }
}
