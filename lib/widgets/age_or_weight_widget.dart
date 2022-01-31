import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_circle_button.dart';

class AgeAndWeightWidget extends StatelessWidget {
  const AgeAndWeightWidget({
    @required this.title,
    @required this.ageOrWeight,
    @required this.decrement,
    @required this.increment,
    Key key,
  }) : super(key: key);

  final String title;
  final String ageOrWeight;
  final Function() decrement;
  final Function() increment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          Text(
            ageOrWeight,
            style: TextStyle(
              fontSize: 60.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCircleButton(
                buttonText: '-',
                onPressed: decrement,
              ),
              const SizedBox(width: 5),
              CustomCircleButton(
                buttonText: '+',
                onPressed: increment,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
