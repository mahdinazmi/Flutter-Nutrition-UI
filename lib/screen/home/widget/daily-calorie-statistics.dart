import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition/config/config.dart';
import 'package:nutrition/widget/widget.dart';

class DailyCalorieStatistics extends StatelessWidget {
  const DailyCalorieStatistics({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        margin: EdgeInsets.only(top: 18. w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            statisticsTile(
              title: 'Intaked',
              icon: FaIcon(
                FontAwesomeIcons.pizzaSlice,
                color: Colors.orange,
              ),
              progressColor: AppColors.colorAccent,
              value: 589,
              progressPercent: 0.4
            ),
            SizedBox(width: 15. w, ),
            statisticsTile(
              title: 'Burned',
              icon: FaIcon(
                FontAwesomeIcons.fire,
                color: Colors.red,
              ),
              progressColor: Colors.redAccent,
              value: 738,
              progressPercent: 0.7
            ),
          ],
        ),
      ),
    );
  }
}