import 'package:flutter/material.dart';

class CustomChooseLevelPageViewTileWidget extends StatelessWidget {
  final Color backgroundColor;
  const CustomChooseLevelPageViewTileWidget({
    super.key,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16.0,
          ),
          color: backgroundColor,
        ),
      ),
    );
  }
}
