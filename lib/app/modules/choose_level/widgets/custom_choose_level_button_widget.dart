import 'package:flutter/material.dart';
import 'package:tennis_app/app/core/theme/app_theme_colors.dart';
import 'package:tennis_app/app/modules/choose_level/constants/choose_level_dimensions.dart';

class CustomChooseLevelButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  final Widget child;
  const CustomChooseLevelButtonWidget({
    super.key,
    required this.child,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          const Size.fromHeight(
            ChooseLevelDimensions.cirlceButtonSize,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          AppThemeColors.instance.secondaryColor,
        ),
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
