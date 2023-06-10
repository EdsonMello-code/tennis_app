import 'package:flutter/material.dart';
import 'package:tennis_app/app/core/theme/app_theme_colors.dart';

class GenderCardWidget extends StatelessWidget {
  final Color? color;

  const GenderCardWidget({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * .75,
      height: 402.49,
      decoration: BoxDecoration(
        color: color ?? AppThemeColors.instance.cardWomenColor,
        borderRadius: BorderRadius.circular(
          8.0,
        ),
      ),
    );
  }
}
