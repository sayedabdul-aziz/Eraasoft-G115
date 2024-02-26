import 'package:bmi_calculator/calculator/app_colors.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result});
  final double result;

// Severe Thinness	< 16
// Moderate Thinness	16 - 17
// Mild Thinness	17 - 18.5
// Normal	18.5 - 25
// Overweight	25 - 30
// Obese Class I	30 - 35
// Obese Class II	35 - 40
// Obese Class III	> 40

  String getClassification() {
    if (result < 16) {
      return 'Severe Thinness';
    } else if (result >= 16 && result <= 17) {
      return 'Moderate Thinness';
    } else if (result >= 18.5 && result <= 25) {
      return 'Normal';
    } else {
      return 'Obese Class III';
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getClassification(),
              style: TextStyle(color: AppColors.green, fontSize: 22),
            ),
            Text(
              result.toStringAsFixed(2),
              style: TextStyle(color: AppColors.white, fontSize: 22),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                width: width * .5,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('RE-CALCULATE')))
          ],
        ),
      )),
    );
  }
}
