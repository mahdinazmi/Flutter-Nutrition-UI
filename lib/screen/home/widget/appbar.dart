import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/config/config.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100. w,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                  fontSize: 16. sp,
                  fontWeight: FontWeight.bold
                ),
              )
            ]
          ),
          Container(
            height: 45. w,
            width: 45. w,
            decoration: BoxDecoration(
              color: AppColors.colorTint200,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/calendar.svg',
                color: AppColors.colorPrimary,
                width: 25. w,
                height: 25. w
              ),
            )
          ),
        ],
      ),
    );
  }
}