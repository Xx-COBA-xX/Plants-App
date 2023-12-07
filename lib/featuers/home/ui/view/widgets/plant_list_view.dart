import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/size_config.dart';
import '../../view_model/plant list/plants_list_one_view_model.dart';
import 'build_plant_item_info.dart';
import 'plant_list_view_item.dart';

class PlantListView extends StatefulWidget {
  const PlantListView({super.key});

  @override
  State<PlantListView> createState() => _PlantListViewState();
}

class _PlantListViewState extends State<PlantListView> {
  final List plantListOne =
      PlantsListOneInfo.plantsListOneInfo;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SizedBox(
      height: SizeConfig.screenHeight! * 0.35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CupertinoButton(
            onPressed: () {
              // GoRouter.of(context).pushReplacementNamed(
              //   AppRouter.kPlantDetailsViewRouter,
              // );
            },
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: PlantsListViewItem(
                    image: plantListOne[index].image,
                    index: index,
                  ),
                ),
                const Expanded(
                  child: BuildPlantItmeInfo(),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, _) {
          return const SizedBox(
            width: 8,
          );
        },
        itemCount: plantListOne.length,
      ),
    );
  }
}
