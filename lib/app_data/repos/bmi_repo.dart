import 'package:kurs4_sabak7_bmi/app_data/services/bmi_services.dart';

class BmiRepo {
  double calculateBmi(int weight, double height) {
    return bmiServices.calculateBmi(weight, height);
  }

  String getResult(double _bmi) {
    return bmiServices.getResult(_bmi);
  }

  String getInterpretation(double _bmi) {
    return bmiServices.getInterpretation(_bmi);
  }
}

final BmiRepo bmiRepo = BmiRepo();
