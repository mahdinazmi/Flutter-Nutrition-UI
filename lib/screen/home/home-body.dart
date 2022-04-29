import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/config/config.dart';

import 'widget/appbar.dart';
import 'widget/daily-calorie-statistics.dart';
import 'widget/daily-summary.dart';
import 'widget/meal-consumed.dart';

class HomeBody extends StatelessWidget {

  HomeBody({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 15. w, left: 15. w),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
            HomeScreenAppBar(),
            DailySummary(),
            DailyCalorieStatistics(),
            MealConsumed()
          ],
        ),
      ),
    );
  }
}