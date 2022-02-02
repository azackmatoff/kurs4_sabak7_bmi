import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurs4_sabak7_bmi/brain/bmi_brain.dart';
import 'package:kurs4_sabak7_bmi/pages/bmi_result_page.dart';
import 'package:kurs4_sabak7_bmi/widgets/age_or_weight_widget.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_card.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_main_button.dart';
import 'package:kurs4_sabak7_bmi/widgets/gender_widget.dart';
import 'package:kurs4_sabak7_bmi/widgets/height_widget.dart';

enum Gender { NONE, MALE, FEMALE }

enum Toyota { Camry, Corola, Rav4, None }

class BmiPage extends StatefulWidget {
  const BmiPage({Key key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double _height = 170;

  int _weight = 60;
  int _age = 18;

  Color _selectedColor = Color(0xff24263B);
  Color _unSelectedColor = Color(0xFF181B2C);

  bool _maleSelected = false;
  bool _femaleSelected = false;

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
                      text: 'MALE',
                      onTap: () {
                        setState(() {
                          _gender = Gender.MALE;
                        });
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                  CustomCard(
                    bgColor: _gender == Gender.FEMALE
                        ? _selectedColor
                        : _unSelectedColor,
                    child: GenderWidget(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                      onTap: () {
                        setState(() {
                          _gender = Gender.FEMALE;
                          // _femaleSelected = !_femaleSelected;
                          // _maleSelected = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomCard(
                  bgColor: Color(0xff24263B),
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
                    bgColor: Color(0xff24263B),
                    child: AgeAndWeightWidget(
                      title: 'WEIGHT',
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
                    bgColor: Color(0xff24263B),
                    child: AgeAndWeightWidget(
                      title: 'AGE',
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
              //// eski misal
              // Positioned(
              //   bottom: 0,
              //   child: SizedBox(
              //     width: MediaQuery.of(context).size.width,
              //     height: 60,
              //     child: InkWell(
              //       onTap: () {},
              //       child: Container(
              //         color: Colors.red,
              //         child: Center(
              //             child: Text(
              //           'CALCULATE',
              //           style: const TextStyle(fontSize: 25.0),
              //         )),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomMainButton(
        buttonText: 'Calculate',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BmiResultPage(
                bmiResult: bmiBrain.calculateBmi(_weight, _height),
              ),
            ),
          );
        },
      ),
    );
  }

  /// bul jon gana misal, bul kodtu koldonboybuz
  /// oorduna biz jasagan Widgetterdi koldonobuz
  _buildContainer(IconData icon, String text) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xff24263B),
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Column(
            children: [
              FaIcon(
                icon,
                size: 85.0,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 25.0),
              ),
            ],
          ),
        ),
      ),
    );
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