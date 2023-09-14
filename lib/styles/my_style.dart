import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyStyle {
  static final neumorphicBoxStyle = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.r)),
      depth: 7,
      intensity: .8,
      lightSource: LightSource.topLeft,
      color: Colors.grey.shade200);

  static final neumorphicPressedBoxStyle = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.r)),
      depth: -7,
      intensity: .8,
      lightSource: LightSource.topLeft,
      color: Colors.grey.shade200);

  static final neumorphicButtonStyle = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15.r)),
      depth: 7,
      intensity: .8,
      lightSource: LightSource.topLeft,
      color: Colors.grey.shade200);



  /*static final neumorphicButtonStyle = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: const NeumorphicBoxShape.circle(),
      depth: 0,
      intensity: 1,
      lightSource: LightSource.topLeft,
      color: Colors.grey.shade200);*/



  static final smallFontSize = 15.sp;
  static final largeFontSize = 18.sp;

  static final smallFontStyle = TextStyle(fontSize: 12.sp);
  static final mediumFontStyle = TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.black);
  static final largeFontStyle = TextStyle(fontSize: 18.sp);

}
