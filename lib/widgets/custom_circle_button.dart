import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/app_constants/colors/app_colors.dart';
import 'package:kurs4_sabak7_bmi/app_constants/text_styles/app_text_styles.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    @required this.buttonText,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  final String buttonText;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        buttonText,
        style: AppTextStyles.circleButton,
      ),
      onPressed: onPressed,
      color: AppColors.greyDarkish,
      height: 50,
      minWidth: 50,
      shape: CircleBorder(side: BorderSide()),
    );
  }
}
