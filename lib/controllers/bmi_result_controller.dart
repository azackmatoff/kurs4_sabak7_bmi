import 'package:get/get.dart';
import 'package:kurs4_sabak7_bmi/app_data/repos/bmi_repo.dart';
import 'package:kurs4_sabak7_bmi/controllers/bmi_page_controller.dart';

class BmiResultController extends GetxController {
  static final BmiResultController find = Get.find<BmiResultController>();

  final BmiPageController _bmiPageController = BmiPageController.find;

  RxString title = 'No Result!'.obs;
  RxDouble result = 0.0.obs;
  RxString description = 'You haven\'t chosend anything!'.obs;

  @override
  void onInit() {
    calculateBmi();
    getResult();
    getInterpretation();
    super.onInit();
  }

  void calculateBmi() {
    result.value = bmiRepo.calculateBmi(
      _bmiPageController.getWeight.value,
      _bmiPageController.getHeight.value,
    );
  }

  void getResult() {
    title.value = bmiRepo.getResult(result.value);
  }

  void getInterpretation() {
    description.value = bmiRepo.getInterpretation(result.value);
  }
}
