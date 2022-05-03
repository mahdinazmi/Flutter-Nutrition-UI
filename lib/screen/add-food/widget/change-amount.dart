import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/config/config.dart';

class ChangeAmount extends StatefulWidget {
  const ChangeAmount({
    Key ? key
  }): super(key: key);

  @override
  State < ChangeAmount > createState() => _ChangeAmountState();
}

class _ChangeAmountState extends State < ChangeAmount > {

  int amount = 160;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55. w,
      margin: EdgeInsets.only(top: 30. w, left: 20. w, right: 20. w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55. w,
            width: 140. w,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: AppColors.colorTint200,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      amount--;
                    });
                  },
                  child: Container(
                    width: 35. w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.minimize,
                          color: Colors.black,
                          size: 25. sp,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  amount.toString() + 'g',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14. sp,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      amount++;
                    });
                  },
                  child: Container(
                    width: 35. w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 20. sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 55. w,
            width: 140. w,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: AppColors.colorPrimary,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text(
                'Apply',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}