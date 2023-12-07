import 'package:flutter/material.dart';

class BuildPlantImage extends StatelessWidget {
  const BuildPlantImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: AspectRatio(
        aspectRatio: 3.2 / 4,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
              
            ),
          ),
        ),
      ),
    );
  }
}
