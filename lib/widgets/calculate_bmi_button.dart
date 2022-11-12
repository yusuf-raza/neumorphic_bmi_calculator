import 'package:bmi_calculator/styles/my_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalculateBmiButton extends StatelessWidget {
  const CalculateBmiButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: 120.w,
      child: NeumorphicButton(
        onPressed: (){},
        style: MyStyle.neumorphicButtonStyle,
        child:  Center(child: Text("Check BMI",style: MyStyle.mediumFontStyle,)),
      ),
    );
  }
}
