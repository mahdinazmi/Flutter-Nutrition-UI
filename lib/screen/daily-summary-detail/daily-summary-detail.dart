import 'package:flutter/material.dart';
import 'daily-summary-detail-body.dart';

class DailySummaryDetailScreen extends StatelessWidget {
  static String routeName = '/dailysummarydetail';
  const DailySummaryDetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DailySummaryDetailBody();
  }
}