import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tennis_app/app/modules/choose_level/widgets/custom_choose_level_page_view_tile_widget.dart';

class CustomChooseLevelPageViewWidget extends StatefulWidget {
  final PageController pageViewController;

  const CustomChooseLevelPageViewWidget({
    super.key,
    required this.pageViewController,
  });

  @override
  State<CustomChooseLevelPageViewWidget> createState() =>
      _CustomChooseLevelPageViewWidgetState();
}

class _CustomChooseLevelPageViewWidgetState
    extends State<CustomChooseLevelPageViewWidget> {
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();

    widget.pageViewController.addListener(() {
      setState(() {
        _currentPage = widget.pageViewController.page ?? 0.0;
      });
    });
  }

  final pages = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 406,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pages.length,
        controller: widget.pageViewController,
        itemBuilder: (context, index) {
          final interpolation = (1 - (_currentPage - index).abs()).abs();

          final animation = lerpDouble(0.8, 1, interpolation);

          final colorInterpolation = Color.lerp(
            const Color(
              0xFF6D6B69,
            ),
            const Color(0xFFF5F1EE),
            interpolation,
          );

          return Opacity(
            opacity: animation! > 1.0 ? 1.0 : animation,
            child: Transform.scale(
              scale: animation,
              child: CustomChooseLevelPageViewTileWidget(
                backgroundColor: colorInterpolation!,
              ),
            ),
          );
        },
      ),
    );
  }
}
