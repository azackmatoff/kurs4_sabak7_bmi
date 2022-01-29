import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/pages/bmi_page.dart';

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
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0b0e21),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0b0e21),
        ),
      ),
      home: const BmiPage(),
    );
  }
}
