import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition/config/config.dart';
import 'package:nutrition/model/model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrition/widget/meal-consumed-tile.dart';


class MealsConsumed extends StatefulWidget {
  const MealsConsumed({
    Key ? key
  }): super(key: key);

  @override
  State < MealsConsumed > createState() => _MealsConsumedState();
}

class _MealsConsumedState extends State < MealsConsumed > {

  List < MealConsumed > mealsConsumed = [];

  @override
  void didChangeDependencies() {
    provideMealsConsumed();
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mealsConsumed.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return mealConsumedTile(mealsConsumed[index]);
      }
    );
  }

  void provideMealsConsumed() {
    mealsConsumed.add(
      MealConsumed(
        mealAmount: '407',
        mealName: 'Breakfast',
        progressValue: 50,
        consumedFoods: [
          FoodConsumed(
            foodName: 'Espresso coffe',
            consumedAmount: '30 ml',
            boxColor: AppColors.colorTint200,
            icon: SvgPicture.asset(
              'assets/icons/tea.svg',
              width: 25. w,
              height: 25. w
            ),
          ),
          FoodConsumed(
            foodName: 'Croissant',
            consumedAmount: '100 ml',
            boxColor: AppColors.colorErrorLight,
            icon: SvgPicture.asset(
              'assets/icons/croissant.svg',
              width: 25. w,
              height: 25. w
            ),
          )
        ]
      )
    );

    mealsConsumed.add(
      MealConsumed(
        mealAmount: '352',
        mealName: 'Lunch',
        progressValue: 70,
        consumedFoods: [
          FoodConsumed(
            foodName: 'Chicken breast',
            consumedAmount: '200 g',
            boxColor: AppColors.colorTint200,
            icon: SvgPicture.asset(
              'assets/icons/chicken.svg',
              width: 25. w,
              height: 25. w
            ),
          ),
          FoodConsumed(
            foodName: 'Green salad',
            consumedAmount: '100 g',
            boxColor: AppColors.colorErrorLight,
            icon: SvgPicture.asset(
              'assets/icons/salad.svg',
              width: 25. w,
              height: 25. w
            ),
          )
        ]
      )
    );

    mealsConsumed.add(
      MealConsumed(
        mealAmount: '635',
        mealName: 'Dinner',
        progressValue: 30,
        consumedFoods: [
          FoodConsumed(
            foodName: 'Pasta with tomato sauce',
            consumedAmount: '160 g',
            boxColor: AppColors.colorTint200,
            icon: SvgPicture.asset(
              'assets/icons/pasta.svg',
              width: 25. w,
              height: 25. w
            ),
          ),
        ]
      )
    );
  }
}