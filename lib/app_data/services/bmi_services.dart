import 'dart:math' as math;

class BmiServices {
  double calculateBmi(int weight, double height) {
    return weight / math.pow(height / 100, 2);
  }

  String getResult(double _bmi) {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(double _bmi) {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

final BmiServices bmiServices = BmiServices();
