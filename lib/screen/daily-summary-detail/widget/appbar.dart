import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/config/config.dart';

class DailySummaryDetailScreenAppBar extends StatelessWidget {
  const DailySummaryDetailScreenAppBar({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        height: 100. w,
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              height: 50. w,
              width: 50. w,
              decoration: BoxDecoration(
                color: AppColors.colorTint200,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.colorPrimary,
                  size: 25.sp,
                )
              )
            ),
          ],
        ),
      ),
    );
  }
}