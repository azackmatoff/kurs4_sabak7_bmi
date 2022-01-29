import 'package:flutter/material.dart';

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
          'HEIGHT',
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
            Text('cm', style: TextStyle(fontSize: 20)),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.red,
            inactiveTrackColor: Colors.white,
            overlayColor: Color(0x29EB1555),
            thumbColor: Colors.red,
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
