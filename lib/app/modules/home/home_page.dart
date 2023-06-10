import 'package:flutter/material.dart';
import 'package:tennis_app/app/core/theme/app_theme_colors.dart';
import 'package:tennis_app/app/core/widgets/text_widget.dart';
import 'package:tennis_app/app/modules/home/widgets/gender_card_widget.dart';
import 'package:tennis_app/app/modules/home/widgets/train_tile_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const SafeArea(child: Drawer()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 16.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppThemeColors.instance.primaryColor,
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                        ),
                        child: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(
                            8.0,
                          ),
                          border: Border.all(
                            color: const Color(0xFFFAF7F8),
                          ),
                        ),
                        child: const Icon(Icons.search),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: TextWidget(
                    'Clubs',
                    color: AppThemeColors.instance.primaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 402.49,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: GenderCardWidget(),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 24.0,
                    bottom: 24.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        'Train',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      TextWidget(
                        'Alles',
                        color: Color(0xFF016A40),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ],
                  ),
                ),
                const TrainTileWidget(),
                const TrainTileWidget(),
                const TrainTileWidget(),
                const TrainTileWidget(),
                const TrainTileWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
