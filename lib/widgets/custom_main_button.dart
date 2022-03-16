import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/app_constants/colors/app_colors.dart';
import 'package:kurs4_sabak7_bmi/app_constants/text_styles/app_text_styles.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    @required this.buttonText,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: MaterialButton(
        child: Text(
          buttonText.toUpperCase(),
          style: AppTextStyles.mainButton,
        ),
        onPressed: onPressed,
        color: AppColors.redAccent,
        height: 45,
        minWidth: double.infinity,
      ),
    );
  }
}
