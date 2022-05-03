import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/config/config.dart';
import 'package:nutrition/screen/screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class RemainingCalorie extends StatelessWidget {
  const RemainingCalorie({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60. w,
      margin: EdgeInsets.only(bottom: 20. w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 250. w,
            height: 40. w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Remaining',
                      style: TextStyle(
                        color: AppColors.colorTint500,
                        fontSize: 15. sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '1,112',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16. sp,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 5. w, ),
                        Text(
                          'kcal',
                          style: TextStyle(
                            color: AppColors.colorTint500,
                            fontSize: 12. sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                LinearPercentIndicator(
                  width: 250. w,
                  animation: true,
                  lineHeight: 6,
                  animationDuration: 2500,
                  percent: 0.8,
                  barRadius: Radius.circular(3),
                  progressColor: AppColors.colorPrimary,
                  padding: EdgeInsets.zero,
                  backgroundColor: AppColors.colorTint600.withOpacity(0.2),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.popAndPushNamed(context, AddFoodScreen.routeName);
            },
            child: Container(
              height: 60. w,
              width: 60. w,
              decoration: BoxDecoration(
                color: AppColors.colorPrimary,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 27. sp,
              )
            ),
          )
        ],
      ),
    );
  }
}