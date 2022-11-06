import 'package:flutter/material.dart';
import 'package:tennis_app/app/core/constants/app_routes.dart';
import 'package:tennis_app/app/core/theme/app_theme_colors.dart';
import 'package:tennis_app/app/modules/choose_level/pages/choose_level_page.dart';
import 'package:tennis_app/app/modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: AppThemeColors.instance.primarySwatch,
        primaryColor: AppThemeColors.instance.primaryColor,
      ),
      routes: {
        AppRoutes.initialRoute: (context) => const ChooseLevelPage(),
        AppRoutes.homePage: (context) => const HomePage(),
      },
    );
  }
}
