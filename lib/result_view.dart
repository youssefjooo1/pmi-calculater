import 'package:flutter/material.dart';

import 'package:flutter_application_120/app_colors.dart';

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
    String text;
    if (result < 16) {
      text = 'Severe Thinness	';
    } else if (result >= 16 && result < 17) {
      text = 'Moderate Thinness	';
    } else if (result >= 17 && result < 18.5) {
      text = 'Mild Thinness	';
    } else if (result >= 18.5 && result < 25) {
      text = 'Normal';
    } else if (result >= 25 && result < 30) {
      text = 'Overweight';
    } else if (result >= 30 && result < 35) {
      text = 'Obese Class I';
    } else if (result >= 35 && result < 40) {
      text = 'Obese Class II';
    } else {
      text = 'Obese Class III';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              'Your result',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Expanded(
              child: Container(
                padding:  EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColors.containerBg,
                  borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(getClassification(),
                        style: const TextStyle(
                            color: Color(0xff1edb8c),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 80,
                    ),
                    Text(result.toStringAsFixed(2),
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 65)),
                    const SizedBox(
                      height: 80,
                    ),
                    const Text(
                      'your body weight is absolutely normal, Good job💪',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            
            
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text('Recalculate')),
            ),
          ],
        ),
      ),
    );
  }
}