import 'package:flutter/material.dart';
import 'package:tennis_app/app/core/constants/app_routes.dart';
import 'package:tennis_app/app/core/theme/app_theme_text.dart';
import 'package:tennis_app/app/modules/choose_level/constants/choose_level_dimensions.dart';
import 'package:tennis_app/app/modules/choose_level/constants/choose_level_text.dart';
import 'package:tennis_app/app/modules/choose_level/widgets/custom_choose_level_page_view_widget.dart';
import 'package:tennis_app/app/modules/choose_level/widgets/custom_scaffold_select_choose_widget.dart';

import '../widgets/custom_choose_level_button_widget.dart';
import '../widgets/custom_title_container_widget.dart';

class ChooseLevelPage extends StatefulWidget {
  const ChooseLevelPage({super.key});

  @override
  State<ChooseLevelPage> createState() => _ChooseLevelPageState();
}

class _ChooseLevelPageState extends State<ChooseLevelPage> {
  late final PageController pageViewController;

  @override
  void initState() {
    super.initState();
    pageViewController = PageController(viewportFraction: 0.70);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CustomScaffoldSelectChooseWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomTitleContainerWidget(),
                CustomChooseLevelPageViewWidget(
                  pageViewController: pageViewController,
                ),
                Column(
                  children: [
                    CustomChooseLevelButtonWidget(
                      onPressed: () {
                        Navigator.of(context).pushNamed(AppRoutes.homePage);
                      },
                      child: const Icon(
                        Icons.chevron_right,
                        size: ChooseLevelDimensions.iconChevronSize,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: ChooseLevelDimensions.defaultPaddingEight * 3,
                      ),
                      child: Text(
                        ChooseLevelText.instance.SkipTitle,
                        style: AppTextTheme.body2,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
