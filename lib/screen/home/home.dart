import 'package:flutter/material.dart';
import 'home-body.dart';

class HomeScreen extends StatelessWidget {

  static String routeName = '/home';
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBody();
  }
}