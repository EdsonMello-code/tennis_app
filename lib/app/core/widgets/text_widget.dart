import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tennis_app/app/core/theme/app_theme_colors.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;

  final TextAlign textAlign;

  const TextWidget(
    this.text, {
    super.key,
    this.textAlign = TextAlign.start,
    this.color,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
  });

  factory TextWidget.bodyTwo(String text) {
    return TextWidget(
      text,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter().copyWith(
        color: color ?? AppThemeColors.instance.primaryColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}
