import 'package:flutter/material.dart';


import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_simbal_efict.dart';
import '../../../../onborading/ui/view/widgets/costom_containder_with_border.dart';
class BuildPlantIamge extends StatelessWidget {
  const BuildPlantIamge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              Assets.adsImage3,
            ),
          )),
        ),
        const Positioned(
          top: 30,
          left: -200,
          child: BuildContainerWithBorder(),
        ),
        const Positioned(
          top: 110,
          right: -210,
          child: BuildContainerWithBorder(),
        ),
        const Positioned(
          top: 130,
          right: 10,
          child: ContainerEfict(),
        ),
        const Positioned(
          top: 90,
          left: 10,
          child: ContainerEfict(),
        )
      ],
    ));
  }
}

