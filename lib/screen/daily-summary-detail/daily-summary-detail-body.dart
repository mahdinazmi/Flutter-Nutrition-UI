import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/config/config.dart';
import 'widget/appbar.dart';
import 'widget/date.dart';
import 'widget/meals-consumed.dart';
import 'widget/remaining-calorie.dart';

class DailySummaryDetailBody extends StatefulWidget {
  const DailySummaryDetailBody({
    Key ? key
  }): super(key: key);

  @override
  State < DailySummaryDetailBody > createState() => _DailySummaryDetailBodyState();
}

class _DailySummaryDetailBodyState extends State < DailySummaryDetailBody > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 15. w, left: 15. w),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
            DailySummaryDetailScreenAppBar(),
            Date(),
            MealsConsumed(),
            RemainingCalorie(),
          ],
        ),
      ),
    );
  }
}