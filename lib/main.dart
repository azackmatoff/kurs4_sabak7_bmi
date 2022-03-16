import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/pages/bmi_page.dart';
import 'package:kurs4_sabak7_bmi/utils/theme/app_theme.dart';

void main() {
  runApp(const BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: AppTheme.darkTheme(),
      home: const BmiPage(),
    );
  }
}
