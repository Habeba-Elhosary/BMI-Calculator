import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchWidget extends StatelessWidget {
  const ToggleSwitchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 100.w,
      cornerRadius: 20.r,
      minHeight: 35.h,
      activeBgColors: [
        [MyColors.myBlue],
        [MyColors.myPink]
      ],
      inactiveBgColor: MyColors.myGrey,
      totalSwitches: 2,
      customIcons: [
        Icon(
          Icons.male,
          size: 30.sp,
          color: Colors.white,
        ),
        Icon(
          Icons.female,
          size: 30.sp,
          color: Colors.white,
        ),
      ],
      radiusStyle: true,
      onToggle: (gender) {
        if (kDebugMode) {
          print('switched to: $gender');
        }
      },
    );
  }
}
