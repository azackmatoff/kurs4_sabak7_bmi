import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/app_constants/colors/app_colors.dart';
import 'package:kurs4_sabak7_bmi/app_constants/text_styles/app_text_styles.dart';
import 'package:kurs4_sabak7_bmi/app_constants/texts/app_texts.dart';
import 'package:kurs4_sabak7_bmi/app_data/repos/bmi_repo.dart';

import 'package:kurs4_sabak7_bmi/widgets/custom_card.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_main_button.dart';

class BmiResultPage extends StatelessWidget {
  const BmiResultPage({@required this.bmiResult, Key key}) : super(key: key);

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTexts.yourResult.toUpperCase()),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width * 0.9,
          child: CustomCard(
            bgColor: AppColors.greyDark,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  bmiRepo.getResult(bmiResult),
                  style: AppTextStyles.resultSubject,
                ),
                Text(
                  bmiResult.toStringAsFixed(1),
                  style: AppTextStyles.resultBigText,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    bmiRepo.getInterpretation(bmiResult),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
      bottomNavigationBar: CustomMainButton(
        buttonText: AppTexts.reCalculate,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
