
import 'package:bmi_calculator_neumorphic/model/bmi_provider.dart';
import 'package:bmi_calculator_neumorphic/styles/my_style.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bmiProvider = Provider.of<BmiProvider>(context);
    return SizedBox(
        height: 130.h,
        width: 100.h,
        child: Neumorphic(
          style: MyStyle.neumorphicBoxStyle,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Age",
                style: MyStyle.mediumFontStyle,
              ),
              Text(
                bmiProvider.age.toString(),
                style: MyStyle.largeFontStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NeumorphicButton(
                    onPressed: () {
                      HapticFeedback.selectionClick();
                     //bmiProvider.incrementAge();
                    },
                    style: MyStyle.neumorphicButtonStyle,
                    child: const Icon(Icons.add),
                  ),
                  NeumorphicButton(
                    onPressed: () {
                      HapticFeedback.selectionClick();
                     // bmiProvider.decrementAge();
                    },
                    style: MyStyle.neumorphicButtonStyle,
                    child: const Icon(Icons.remove),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
