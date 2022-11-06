import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../theme/app_theme_colors.dart';

class ChooseLevelBottomLeftPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = AppThemeColors.instance.waveColor
      ..strokeWidth = 2;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(0, size.height),
        width: size.width,
        height: size.height,
      ),
      -math.pi / 2,
      math.pi / 2,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
