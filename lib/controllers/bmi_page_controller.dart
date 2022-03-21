import 'package:get/get.dart';

import '../app_data/enums/app_enums.dart';

class BmiPageController extends GetxController {
  static final BmiPageController find = Get.find<BmiPageController>();
  RxDouble _height = 170.0.obs;
  RxInt _weight = 60.obs;
  RxInt _age = 18.obs;

  Rx<Gender> gender = Gender.NONE.obs;

  void incrementWeight() {
    _weight++;
  }

  void decrementWeight() {
    _weight--;
  }

  void incrementAge() {
    _age++;
  }

  void decrementAge() {
    _age--;
  }

  void changeGender(Gender chosenGender) {
    gender.value = chosenGender;
  }

  ///Getter, alip keluuchu
  ///Setter, Privatniy variable, ozgortuu

  RxDouble get getHeight => _height;

  set setHeight(double value) {
    _height.value = value;
  }

  RxInt get getWeight => _weight;

  set setWeight(int value) {
    _weight.value = value;
  }

  RxInt get getAge => _age;

  set setAge(int value) {
    _age.value = value;
  }
}
