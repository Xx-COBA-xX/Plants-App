import 'package:flutter/material.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'build_futers_of_plant.dart';
import 'build_new_section_title.dart';

class BuildPlantInfo extends StatelessWidget {
  const BuildPlantInfo({
    super.key,
    //required this.details,
  });

  //final List<DetailsPlantModel> details;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          const BuildNewSectionTitle(),
          SizedBox(
            height: SizeConfig.defaultSize! * 0.7,
          ),
          Text(
            "lements Haider Habeeb Hameed He is Programmer in the new section title are added to the new section title title identifier and the new section title jelly character in the new section title entry and the new section",
            style: Styles.textStyle16,
            maxLines: 4,
            overflow: TextOverflow.fade,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              4,
              (index) => const BuildFutersOfPlant(
                title: "details[index].title",
                subTitle: "details[index].subTitle",
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price",
                    style: Styles.textStyle16.copyWith(fontSize: 14),
                  ),
                  Text(
                    '\$39.99',
                    style: Styles.textStyle24
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              CustomButton(
                width: SizeConfig.screenWidth! / 2,
                bgColor: kPrimaryColor,
                title: "Add to Cart",
                fgColor: kWhiteColor,
                onPressed: () {},
              )
            ],
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ));
  }
}
