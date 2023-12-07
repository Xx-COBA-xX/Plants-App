// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../core/utils/size_config.dart';
import 'widgets/build_plant_iamge.dart';
import 'widgets/build_plant_info.dart';
import 'widgets/detatils_app_bar.dart';

class PlantDetailsView extends StatelessWidget {
  const PlantDetailsView({
    Key? key,
    // required this.details,
  }) : super(key: key);

  // final List<DetailsPlantModel> details;
//TODO : Build animations for container with border
//TODO : Add Hero animations to the image
//TODO : make relationship btween home view and details view

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CoustmAppBar(),
            BuildPlantIamge(),
            BuildPlantInfo(),
          ],
        ),
      ),
    );
  }
}
