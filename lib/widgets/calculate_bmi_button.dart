import 'package:bmi_calculator_neumorphic/styles/my_style.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
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
        child:  Center(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.calculate),
            Text("Calculate",style: MyStyle.mediumFontStyle,),
          ],
        )),
      ),
    );
  }
}
