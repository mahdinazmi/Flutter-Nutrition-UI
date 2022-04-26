import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/config/config.dart';

class HomeBody extends StatelessWidget {

  HomeBody({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar,
    );
  }

  final AppBar _appBar = AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leadingWidth: 110. w,
    toolbarHeight: 110. w,
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45. w,
            width: 45. w,
            margin: EdgeInsets.only(right: 15. w),
            decoration: BoxDecoration(
              color: AppColors.colorTint300,
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
      )
    ],
    leading: Container(
      margin: EdgeInsets.only(left: 15. w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Today',
            style: TextStyle(
              color: AppColors.colorTint500,
              fontSize: 14. sp
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
    )
  );
}