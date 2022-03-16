import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/app_constants/colors/app_colors.dart';
import 'package:kurs4_sabak7_bmi/app_constants/texts/app_texts.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({
    @required this.sliderValue,
    @required this.onChanged,
    Key key,
  }) : super(key: key);

  final double sliderValue;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppTexts.height.toUpperCase(),
          style: const TextStyle(fontSize: 25.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              sliderValue.toInt().toString(),
              style: TextStyle(fontSize: 60),
            ),
            const SizedBox(width: 3),
            Text(AppTexts.cm, style: TextStyle(fontSize: 20)),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: AppColors.red,
            inactiveTrackColor: AppColors.white,
            overlayColor: AppColors.redDark,
            thumbColor: AppColors.red,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
          ),
          child: Slider(
            value: sliderValue,
            min: 0,
            max: 220,
            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
