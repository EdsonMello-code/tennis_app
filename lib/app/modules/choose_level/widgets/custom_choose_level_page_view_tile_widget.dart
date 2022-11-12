import 'package:flutter/material.dart';
import 'package:tennis_app/app/modules/choose_level/constants/choose_level_dimensions.dart';

class CustomChooseLevelPageViewTileWidget extends StatelessWidget {
  final Color backgroundColor;
  const CustomChooseLevelPageViewTileWidget({
    super.key,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: ChooseLevelDimensions.customChooseLevelPageViewTilePadding,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            ChooseLevelDimensions.customChooseLevelPageViewBorderRadius,
          ),
          color: backgroundColor,
        ),
      ),
    );
  }
}
