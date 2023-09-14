
import 'package:bmi_calculator_neumorphic/model/bmi_provider.dart';
import 'package:bmi_calculator_neumorphic/styles/my_style.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AgeWeightHeightSliders extends StatelessWidget {
  const AgeWeightHeightSliders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BmiProvider bmiProvider = Provider.of<BmiProvider>(context);

    return SizedBox(
     // height: 120.h,
      width: 300.w,
      child: Neumorphic(
        style: MyStyle.neumorphicBoxStyle,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Height",
                style: MyStyle.mediumFontStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bmiProvider.height.toStringAsFixed(0),
                      style: MyStyle.largeFontStyle),
                  Text(
                    " cm",
                    style: MyStyle.mediumFontStyle,
                  )
                ],
              ),
              // Text("${bmiProvider.height.toStringAsFixed(0)}",style: MyStyle.largeFontStyle),
              NeumorphicSlider(
                  thumb: const Icon(Icons.circle),
                  height: 10,
                  style: const SliderStyle(
                    depth: 2,
                  ),
                  min: 0,
                  max: 200,
                  value: bmiProvider.height,
                  onChanged: (value) {
                    bmiProvider.setHeight(value);
                    print(value);
                    //using haptic feedback to compliment the haptic feedback provided by neumorphic package by default
                    HapticFeedback.selectionClick();
                  }),
              const SizedBox(height: 30,),

              Text(
                "Weight",
                style: MyStyle.mediumFontStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bmiProvider.weight.toStringAsFixed(0),
                      style: MyStyle.largeFontStyle),
                  Text(
                    " kg",
                    style: MyStyle.mediumFontStyle,
                  )
                ],
              ),
              // Text("${bmiProvider.height.toStringAsFixed(0)}",style: MyStyle.largeFontStyle),
              NeumorphicSlider(
                  thumb: const Icon(Icons.circle),
                  height: 10,
                  style: const SliderStyle(
                    depth: 2,
                  ),
                  min: 0,
                  max: 200,
                  value: bmiProvider.weight,
                  onChanged: (value) {
                    bmiProvider.setWeight(value);
                    print(value);
                    //using haptic feedback to compliment the haptic feedback provided by neumorphic package by default
                    HapticFeedback.selectionClick();
                  }),
              const SizedBox(height: 30,),

              Text(
                "Age",
                style: MyStyle.mediumFontStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(bmiProvider.age.toStringAsFixed(0),
                      style: MyStyle.largeFontStyle),
                  Text(
                    " years",
                    style: MyStyle.mediumFontStyle,
                  )
                ],
              ),
              // Text("${bmiProvider.height.toStringAsFixed(0)}",style: MyStyle.largeFontStyle),
              NeumorphicSlider(
                  thumb: const Icon(Icons.circle),
                  height: 10,
                  style: const SliderStyle(
                    depth: 2,
                  ),
                  min: 0,
                  max: 100,
                  value: bmiProvider.age,
                  onChanged: (value) {
                    bmiProvider.setAge(value);
                    print(value);
                    //using haptic feedback to compliment the haptic feedback provided by neumorphic package by default
                    HapticFeedback.selectionClick();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
