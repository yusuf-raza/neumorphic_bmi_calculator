
import 'package:bmi_calculator_neumorphic/model/bmi_provider.dart';
import 'package:bmi_calculator_neumorphic/styles/my_style.dart';

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class GenderButtonFemale extends StatelessWidget {
  GenderButtonFemale({
    Key? key,
  }) : super(key: key);

  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    BmiProvider bmiProvider = Provider.of<BmiProvider>(context);

    return SizedBox(
        height: 150.h,
        width: 120.h,
        child: NeumorphicButton(
          onPressed: () {
            isPressed = !isPressed;
            bmiProvider.setFemale(isPressed);
          },
          style: !isPressed
              ? MyStyle.neumorphicBoxStyle
              : MyStyle.neumorphicPressedBoxStyle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.girl,
                size: 45.r,
              ),
              Text(
                "Female",

                style: MyStyle.mediumFontStyle,
              )
            ],
          ),
        ));
  }
}
