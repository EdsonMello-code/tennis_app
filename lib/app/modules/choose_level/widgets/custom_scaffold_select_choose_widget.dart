import 'package:flutter/material.dart';

import '../../../core/painters/choose_level_bottom_left_painter.dart';
import '../../../core/painters/choose_level_top_left_painter.dart';
import '../../../core/theme/app_theme_colors.dart';

class CustomScaffoldSelectChooseWidget extends StatelessWidget {
  final Widget child;

  const CustomScaffoldSelectChooseWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppThemeColors.instance.primaryColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            child,
            Positioned(
              top: 0,
              left: 0,
              child: CustomPaint(
                size: const Size(143, 146),
                painter: ChooseLevelTopLeftPainter(),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: CustomPaint(
                size: const Size(143, 146),
                painter: ChooseLevelBottomLeftPainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
