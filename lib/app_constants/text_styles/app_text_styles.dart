import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/app_constants/colors/app_colors.dart';

class AppTextStyles {
  static const TextStyle mainButton = TextStyle(
    color: AppColors.white,
    fontSize: 25,
  );
  static const TextStyle ageOrWeight = TextStyle(
    color: AppColors.white,
    fontSize: 60,
  );
  static const TextStyle circleButton = TextStyle(
    color: AppColors.white,
    fontSize: 42,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle resultSubject = TextStyle(
    color: AppColors.greenLight,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle resultBigText = TextStyle(
    fontSize: 100,
    fontWeight: FontWeight.bold,
  );
}
