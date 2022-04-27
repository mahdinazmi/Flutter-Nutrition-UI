import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/config/config.dart';

class DailySummary extends StatelessWidget {
  const DailySummary({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Container(
        padding: EdgeInsets.all(18. w),
        decoration: BoxDecoration(
          color: AppColors.colorPrimary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 160. w,
              height: 160. w,
              child: Stack(
                children: [
                  SizedBox(
                    width: 160. w,
                    height: 160. w,
                    child: CircularProgressIndicator(
                      strokeWidth: 8. w,
                      value: 0.7,
                      backgroundColor: AppColors.colorTint100.withOpacity(0.2),
                      valueColor: AlwaysStoppedAnimation < Color > (Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      margin: EdgeInsets.all(13. w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.colorTint100.withOpacity(0.2), width: 8. w),
                      ),
                      child: Container(

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.colorTint100.withOpacity(0.1),
                        ),
                        child: Container(
                          margin: EdgeInsets.all(22. w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Remaining',
                                style: TextStyle(
                                  color: AppColors.colorTint300,
                                  fontSize: 12. sp,
                                ),
                              ),
                              Text(
                                '1,112',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22. sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'kcal',
                                style: TextStyle(
                                  color: AppColors.colorTint300,
                                  fontSize: 12. sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}