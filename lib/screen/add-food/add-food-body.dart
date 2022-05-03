import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widget/appbar.dart';
import 'widget/calorie-statistics.dart';
import 'widget/change-amount.dart';
import 'widget/food-image.dart';

class AddFoodBody extends StatelessWidget {

  const AddFoodBody({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 15. w, left: 15. w),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
           AddFoodScreenAppBar(),
           FoodImage(),
           CalorieStatistics(),
           ChangeAmount()
          ],
        ),
      ),
    );
  }
}