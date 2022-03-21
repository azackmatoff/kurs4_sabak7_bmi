import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:kurs4_sabak7_bmi/app_constants/colors/app_colors.dart';
import 'package:kurs4_sabak7_bmi/app_constants/texts/app_texts.dart';
import 'package:kurs4_sabak7_bmi/app_data/enums/app_enums.dart';

import 'package:kurs4_sabak7_bmi/controllers/bmi_page_controller.dart';

import 'package:kurs4_sabak7_bmi/pages/bmi_result_page.dart';
import 'package:kurs4_sabak7_bmi/widgets/age_or_weight_widget.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_card.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_main_button.dart';
import 'package:kurs4_sabak7_bmi/widgets/gender_widget.dart';
import 'package:kurs4_sabak7_bmi/widgets/height_widget.dart';

class BmiPage extends StatelessWidget {
  BmiPage({Key key}) : super(key: key);

  final BmiPageController _bmiPageController =
      Get.put<BmiPageController>(BmiPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Obx(
                    () => CustomCard(
                      bgColor: _bmiPageController.gender.value == Gender.MALE
                          ? AppColors.selected
                          : AppColors.unselected,
                      child: GenderWidget(
                        icon: FontAwesomeIcons.mars,
                        text: AppTexts.male.toUpperCase(),
                        onTap: () =>
                            _bmiPageController.changeGender(Gender.MALE),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Obx(
                    () => CustomCard(
                      bgColor: _bmiPageController.gender.value == Gender.FEMALE
                          ? AppColors.selected
                          : AppColors.unselected,
                      child: GenderWidget(
                        icon: FontAwesomeIcons.venus,
                        text: AppTexts.female.toUpperCase(),
                        onTap: () =>
                            _bmiPageController.changeGender(Gender.FEMALE),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomCard(
                  bgColor: AppColors.secondaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22.0),
                    child: Obx(
                      () => HeightWidget(
                        sliderValue: _bmiPageController.getHeight.value,
                        onChanged: (double ozgorgon) {
                          _bmiPageController.setHeight = ozgorgon;
                        },
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomCard(
                    bgColor: AppColors.secondaryColor,
                    child: Obx(
                      () => AgeAndWeightWidget(
                        title: AppTexts.weight.toUpperCase(),
                        ageOrWeight:
                            _bmiPageController.getWeight.value.toString(),
                        decrement: () => _bmiPageController.decrementWeight(),
                        increment: () => _bmiPageController.incrementWeight(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  CustomCard(
                    bgColor: AppColors.secondaryColor,
                    child: Obx(
                      () => AgeAndWeightWidget(
                        title: AppTexts.age.toUpperCase(),
                        ageOrWeight: _bmiPageController.getAge.value.toString(),
                        decrement: () => _bmiPageController.decrementAge(),
                        increment: () => _bmiPageController.incrementAge(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomMainButton(
        buttonText: AppTexts.calculate,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BmiResultPage(),
            ),
          );
        },
      ),
    );
  }

  // void _chooseGender(Gender _chosenGender) {
  //   setState(() {
  //     _gender = _chosenGender;
  //   });
  // }
}











/// DRY - Don't Repeat Yourself
/// 
/// 
/// Tornery operator
///  _maleSelected ? _selectedColor : _unSelectedColor
/// if(_maleSelected == true) {
///   return _selectedColor;
/// } else {
///   return _unSelectedColor;
/// }
/// 
/// 
/// 
/// enum = turlor