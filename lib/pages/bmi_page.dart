import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurs4_sabak7_bmi/app_constants/colors/app_colors.dart';
import 'package:kurs4_sabak7_bmi/app_constants/texts/app_texts.dart';
import 'package:kurs4_sabak7_bmi/app_data/enums/app_enums.dart';
import 'package:kurs4_sabak7_bmi/app_data/repos/bmi_repo.dart';

import 'package:kurs4_sabak7_bmi/pages/bmi_result_page.dart';
import 'package:kurs4_sabak7_bmi/widgets/age_or_weight_widget.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_card.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_main_button.dart';
import 'package:kurs4_sabak7_bmi/widgets/gender_widget.dart';
import 'package:kurs4_sabak7_bmi/widgets/height_widget.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double _height = 170;

  int _weight = 60;
  int _age = 18;

  Color _selectedColor = AppColors.selected;
  Color _unSelectedColor = AppColors.unselected;

  Gender _gender = Gender.NONE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
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
                  //method jakshi versiya ems
                  // _buildContainer(FontAwesomeIcons.mars, 'MALE'),
                  const SizedBox(height: 20),
                  CustomCard(
                    bgColor: _gender == Gender.MALE
                        ? _selectedColor
                        : _unSelectedColor,
                    child: GenderWidget(
                      icon: FontAwesomeIcons.mars,
                      text: AppTexts.male.toUpperCase(),
                      onTap: () => _chooseGender(Gender.MALE),
                    ),
                  ),
                  SizedBox(width: 20),
                  CustomCard(
                    bgColor: _gender == Gender.FEMALE
                        ? _selectedColor
                        : _unSelectedColor,
                    child: GenderWidget(
                      icon: FontAwesomeIcons.venus,
                      text: AppTexts.female.toUpperCase(),
                      onTap: () => _chooseGender(Gender.FEMALE),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomCard(
                  bgColor: AppColors.secondaryColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 22.0),
                    child: HeightWidget(
                      sliderValue: _height,
                      onChanged: (double ozgorgon) {
                        setState(() {
                          _height = ozgorgon;
                        });
                      },
                    ),
                  )),
              const SizedBox(height: 20),
              Row(
                children: [
                  CustomCard(
                    bgColor: AppColors.secondaryColor,
                    child: AgeAndWeightWidget(
                      title: AppTexts.weight.toUpperCase(),
                      ageOrWeight: _weight.toString(),
                      decrement: () {
                        setState(() {
                          _weight--;
                        });
                      },
                      increment: () {
                        setState(() {
                          _weight++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  CustomCard(
                    bgColor: AppColors.secondaryColor,
                    child: AgeAndWeightWidget(
                      title: AppTexts.age.toUpperCase(),
                      ageOrWeight: _age.toString(),
                      decrement: () {
                        setState(() {
                          _age--;
                        });
                      },
                      increment: () {
                        setState(() {
                          _age++;
                        });
                      },
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
              builder: (context) => BmiResultPage(
                bmiResult: bmiRepo.calculateBmi(_weight, _height),
              ),
            ),
          );
        },
      ),
    );
  }

  void _chooseGender(Gender _chosenGender) {
    setState(() {
      _gender = _chosenGender;
    });
  }
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