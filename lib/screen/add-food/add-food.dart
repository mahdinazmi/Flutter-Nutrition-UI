import 'package:flutter/material.dart';

import 'add-food-body.dart';

class AddFoodScreen extends StatelessWidget {

  static String routeName = '/addfood';
  const AddFoodScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AddFoodBody();
  }
}