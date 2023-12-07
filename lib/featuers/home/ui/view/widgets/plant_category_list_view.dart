import 'package:flutter/material.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../data/Category Plant Model/category_plant_model.dart';
import 'plant_category_list_view_item.dart';

class CategoryPlantsListView extends StatefulWidget {
  const CategoryPlantsListView({super.key, required this.plantTypes});
  final List<CategoryPlantModel> plantTypes;

  @override
  State<CategoryPlantsListView> createState() => _CategoryPlantsListViewState();
}

class _CategoryPlantsListViewState extends State<CategoryPlantsListView> {
  int categoryCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight! * .063,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.plantTypes.length,
        itemBuilder: (context, index) {
          return CustomCategoryPlantsItem(
            plantType: widget.plantTypes[index].name,
            index: index,
            currentIndex: categoryCurrentIndex,
            onPressed: () {
              setState(() {
                categoryCurrentIndex = index;
              });
            },
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: index == widget.plantTypes.length - 1 ? 20 : 8,
          );
        },
      ),
    );
  }
}
