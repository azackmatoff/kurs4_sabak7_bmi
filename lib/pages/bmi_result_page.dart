import 'package:flutter/material.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_card.dart';
import 'package:kurs4_sabak7_bmi/widgets/custom_main_button.dart';

class BmiResultPage extends StatelessWidget {
  const BmiResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your result'.toUpperCase()),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width * 0.9,
          child: CustomCard(
            bgColor: Color(0xff323244),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'dasdas'.toUpperCase(),
                  style: TextStyle(
                    color: Color(0xFF43DA8C),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '92',
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    ' dasdas dasdas dasdas dasdas dasdas dasdas dasdas dasdas dasdas',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
      bottomNavigationBar: CustomMainButton(
        buttonText: 'Re-calculate',
        onPressed: () {},
      ),
    );
  }
}
