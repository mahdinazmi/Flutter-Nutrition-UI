import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition/config/config.dart';
import 'package:nutrition/widget/widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CalorieStatistics extends StatelessWidget {
  const CalorieStatistics({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 2,
          child: Container(
            margin: EdgeInsets.only(top: 18. w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _calorieStatistics(),
                SizedBox(width: 15. w, ),
                statisticsTile(
                  title: 'Carbs',
                  icon: FaIcon(
                    FontAwesomeIcons.pizzaSlice,
                    color: Colors.amber,
                  ),
                  progressColor: Colors.amber,
                  unitName: 'grams',
                  value: 23.50,
                  progressPercent: 0.7
                ),
              ],
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 2,
          child: Container(
            margin: EdgeInsets.only(top: 18. w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                statisticsTile(
                  title: 'Proteins',
                  icon: FaIcon(
                    FontAwesomeIcons.pizzaSlice,
                    color: Colors.blue,
                  ),
                  progressColor: Colors.blue,
                  unitName: 'grams',
                  value: 6.0,
                  progressPercent: 0.4
                ),
                SizedBox(width: 15. w, ),
                statisticsTile(
                  title: 'Fats',
                  icon: FaIcon(
                    FontAwesomeIcons.fire,
                    color: Colors.red,
                  ),
                  progressColor: Colors.red,
                  unitName: 'grams',
                  value: 4.1,
                  progressPercent: 0.2
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _calorieStatistics() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.colorPrimary,
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
                  'Calories',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18. sp
                  ),
                ),
                FaIcon(
                  FontAwesomeIcons.fire,
                  color: Colors.orange,
                ),
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
                    percent: 0.6,
                    barRadius: Radius.circular(3),
                    progressColor: Colors.white,
                    padding: EdgeInsets.zero,
                    backgroundColor: AppColors.colorTint400.withOpacity(0.4),
                  ),
                ),
                SizedBox(width: 20. w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '149',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20. sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 5. w),
                    Text(
                      'kcal',
                      style: TextStyle(
                        color: Colors.white,
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
}