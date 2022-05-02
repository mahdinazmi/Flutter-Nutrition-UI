import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/config/config.dart';
import 'appbar.dart';
import 'meals-consumed.dart';
import 'remaining-calorie.dart';

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
          children: [
            DailySummaryDetailScreenAppBarnAppBar(),
            _date(),
            MealsConsumed(),
            RemainingCalorie(),
          ],
        ),
      ),
    );
  }

  Widget _date() {
    return Container(
      margin: EdgeInsets.only(top:10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Today',
            style: TextStyle(
              color: AppColors.colorTint500,
              fontSize: 14. sp,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 7. w),
          Text(
            'Wed, 18 Aug',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24. sp,
              fontWeight: FontWeight.bold
            ),
          )
        ]
      ),
    );
  }
}