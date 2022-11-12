import 'package:bmi_calculator/styles/my_style.dart';
import 'package:bmi_calculator/widgets/age_selector.dart';
import 'package:bmi_calculator/widgets/calculate_bmi_button.dart';
import 'package:bmi_calculator/widgets/gender_button_female.dart';
import 'package:bmi_calculator/widgets/gender_button_male.dart';
import 'package:bmi_calculator/widgets/height_selector.dart';
import 'package:bmi_calculator/widgets/weight_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              //male gender selection widget
              GenderButtonMale(),
              //female gender selection widget
              GenderButtonFemale(),
            ],
          ),
          //HeightSelectorSlider(),
          SizedBox(width:250.w,child: const HeightSelector()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              //weight selector button
              WeightSelector(),
              //height selector button
              AgeSelector()
            ],
          ),
          //button to calculate BMI
          const CalculateBmiButton()
        ],
      ),
    );
  }
}


