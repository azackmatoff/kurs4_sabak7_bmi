import 'dart:developer';
import 'dart:math' as math;

class BmiBrain {
  // weight (lb) / [height (in)]2 x 703

  // double _bmi;

  double calculateBmi(int weight, double height) {
    return weight / math.pow(height / 100, 2);

    // /// [height] ushunu, bashkacha aytkanda
    // /// cm di inch ke ozgortup atabiz
    // double _inch = height / 2.54;
    // double _h = math.pow(_inch, 2);

    // log('math.pow(2) ==>> ${math.pow(2, 2)}');
    // log('math.sqrt(4) ==>> ${math.sqrt(4)}');

    // /// kg ---> lb
    // double _w = weight * 2.205;

    // _bmi = _w / (_h * 703);

    // log('_bmi ==>> $_bmi');
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

final BmiBrain bmiBrain = BmiBrain();
