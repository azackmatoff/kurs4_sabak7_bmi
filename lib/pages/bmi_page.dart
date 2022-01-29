import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_card.dart';
import 'package:kurs4_sabak7_bmi/widgets/gender_widget.dart';
import 'package:kurs4_sabak7_bmi/widgets/height_widget.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  double _sliderValue = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //method jakshi versiya ems
                  // _buildContainer(FontAwesomeIcons.mars, 'MALE'),
                  CustomCard(
                      bgColor: Color(0xff24263B),
                      child: GenderWidget(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      )),
                  SizedBox(width: 20),
                  CustomCard(
                    bgColor: Color(0xff24263B),
                    child: GenderWidget(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomCard(
                bgColor: Color(0xff24263B),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: HeightWidget(
                    sliderValue: _sliderValue,
                    onChanged: (double ozgorgon) {
                      setState(() {
                        _sliderValue = ozgorgon;
                      });
                    },
                  ),
                )),
            const SizedBox(height: 20),
            Row(
              children: [
                CustomCard(
                  bgColor: Color(0xff24263B),
                  child: SizedBox(
                    height: 180,
                    child: const Text('BmiPage'),
                  ),
                ),
                CustomCard(
                  bgColor: Color(0xff24263B),
                  child: const Text('BmiPage'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('CALCULATE'),
                ),
              ),
            ),
          ],
        ),
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