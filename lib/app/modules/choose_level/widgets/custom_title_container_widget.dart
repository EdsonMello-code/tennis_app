import 'package:flutter/material.dart';
import 'package:tennis_app/app/core/widgets/text_widget.dart';

import '../../../core/theme/app_theme_colors.dart';
import '../../../core/theme/app_theme_icons.dart';
import '../constants/choose_level_dimensions.dart';
import '../constants/choose_level_text.dart';

class CustomTitleContainerWidget extends StatelessWidget {
  const CustomTitleContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: ChooseLevelDimensions.paddingBottomTouchIcon,
          ),
          child: Icon(
            AppThemeIcons.instance.select,
            color: AppThemeColors.instance.white,
            size: ChooseLevelDimensions.sizeTouchIcon,
          ),
        ),
        TextWidget.bodyTwo(
          ChooseLevelText.instance.title,
        ),
      ],
    );
  }
}
