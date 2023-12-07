// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/size_config.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import '../../view_model/Plant Category View Model/plant_category_view_model.dart';
import 'ads_page_view.dart';
import 'custom_app_bar.dart';
import 'plant_category_list_view.dart';
import 'plant_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * .03,
              ),
              const CustomAppBar(),
              SizedBox(
                height: SizeConfig.screenHeight! * .015,
              ),
              const AdsPageView(),
              SizedBox(
                height: SizeConfig.screenHeight! * .03,
              ),
              CategoryPlantsListView(
                plantTypes: PlantCategoryManger.plantTypes,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * .03,
              ),
              const PlantListView(),
              const BuildTitleNewSection(),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: SizeConfig.defaultSize! * 35,
            child: const BestSellerListView(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: SizeConfig.screenHeight! * .03,
          ),
        )
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: const [
        BestSellerListViewItem(),
        BestSellerListViewItem(),
        BestSellerListViewItem(),
      ],
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: const DecorationImage(
            image: AssetImage(
              "assets/images/A small, beauti 1 (2)-AmoyShare.png",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}

class BuildTitleNewSection extends StatelessWidget {
  const BuildTitleNewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.screenHeight! * .015,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Best Seller",
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomTextButton(
            title: "SeeAll",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
