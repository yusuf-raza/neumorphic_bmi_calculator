import 'package:bmi_calculator/styles/my_style.dart';
import 'package:bmi_calculator/widgets/calculate_bmi_button.dart';
import 'package:bmi_calculator/widgets/gender_button_female.dart';
import 'package:bmi_calculator/widgets/gender_button_male.dart';
import 'package:bmi_calculator/widgets/age_weight_height_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title:  Text(
          "BMI Calculator",
          style: MyStyle.mediumFontStyle,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey.shade200
        ,
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  //male gender selection widget
                  GenderButtonMale(),
                  //female gender selection widget
                  GenderButtonFemale(),
                ],
              ),
              //AgeWeightHeightSelectorSlider,
              const SizedBox(child: AgeWeightHeightSliders()),
              //button to calculate BMI
              const CalculateBmiButton()
            ],
          ),
        ),
      ),
    );
  }
}


