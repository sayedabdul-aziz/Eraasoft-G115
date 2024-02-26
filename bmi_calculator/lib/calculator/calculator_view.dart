import 'package:bmi_calculator/calculator/app_colors.dart';
import 'package:bmi_calculator/calculator/result_view.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int age = 22;
  int weight = 70;
  int height = 160;
  bool isMale = true;

  Color getColor(bool isMale) {
    if (isMale) {
      return AppColors.primary;
    } else {
      return AppColors.containerBg;
    }
  }

  // ternary Operator

  //int res = (x>y)?x:y;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // male and female
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: (isMale)
                            ? AppColors.primary
                            : AppColors.containerBg,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 80,
                            color: AppColors.white,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Male',
                            style:
                                TextStyle(color: AppColors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
                const SizedBox(width: 10),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: (!isMale)
                            ? AppColors.primary
                            : AppColors.containerBg,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 80,
                            color: AppColors.white,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Female',
                            style:
                                TextStyle(color: AppColors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                )),
              ],
            )),
            //height
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.containerBg,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Height',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 18)),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(),
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(width: 5),
                          Text('cm',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 14,
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Slider(
                        thumbColor: AppColors.primary,
                        activeColor: AppColors.primary,
                        inactiveColor: AppColors.buttonColor,
                        value: height.toDouble(),
                        min: 120,
                        max: 210,
                        onChanged: (value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //weight and age
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.containerBg,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Weight',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(weight.toString(),
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // remove from weight
                            IconButton(
                                color: AppColors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColor),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: const Icon(Icons.remove)),
                            // add to weight
                            IconButton(
                                color: AppColors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColor),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: const Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  ),
                )),
                const SizedBox(width: 10),
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.containerBg,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(age.toString(),
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                color: AppColors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColor),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: const Icon(Icons.remove)),
                            IconButton(
                                color: AppColors.white,
                                style: IconButton.styleFrom(
                                    backgroundColor: AppColors.buttonColor),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: const Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  ),
                )),
              ],
            )),
            //calculate
            Container(
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        foregroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      // navigation to new screen

                      // BMI = 	mass (kg) / height*height (m)
                      double result =
                          weight / ((height / 100) * (height / 100));

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResultView(result: result),
                      ));
                    },
                    child: const Text('CALCULATE')))
          ],
        ),
      ),
    );
  }
}
