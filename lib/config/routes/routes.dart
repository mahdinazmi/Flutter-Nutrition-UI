import 'package:flutter/widgets.dart';
import 'package:nutrition/screen/screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
};
