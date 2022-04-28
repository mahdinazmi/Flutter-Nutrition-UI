  import 'package:flutter/material.dart';
  import 'package:font_awesome_flutter/font_awesome_flutter.dart';
  import 'package:nutrition/config/config.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:percent_indicator/linear_percent_indicator.dart';

  Widget statisticsTile({ Color ? progressColor, String ? title, FaIcon ? icon, double ? value, double ? progressPercent, }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: AppColors.colorTint400),
          borderRadius: BorderRadius.circular(25)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    color: AppColors.colorTint700,
                    fontWeight: FontWeight.bold,
                    fontSize: 18. sp
                  ),
                ),
                icon!,
              ],
            ),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: LinearPercentIndicator(
                    width: 60. w,
                    animation: true,
                    lineHeight: 6,
                    animationDuration: 2500,
                    percent: progressPercent!,
                    barRadius: Radius.circular(3),
                    progressColor: progressColor!,
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColors.colorTint400.withOpacity(0.4),
                  ),
                ),
                SizedBox(width: 20. w),
                Column(
                  children: [
                    Text(
                      value.toString(),
                      style: TextStyle(
                        color: AppColors.colorTint700,
                        fontSize: 20. sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5. w),
                    Text(
                      'kcal',
                      style: TextStyle(
                        color: AppColors.colorTint600,
                        fontSize: 12. sp,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }