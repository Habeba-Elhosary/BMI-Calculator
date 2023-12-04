import 'package:bmi_calculator/Widgets/gauge.dart';
import 'package:bmi_calculator/Widgets/ranges.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultsScreen extends StatelessWidget {
  final double result;
  const ResultsScreen({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myWhite,
      appBar: AppBar(
        backgroundColor: MyColors.myWhite,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: MyColors.myBlue,
            size: 25.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Your BMI Results",
                  style: TextStyles.headLine,
                ),
                SizedBox(height: 30.h),
                GaugeWidget(bmiVal: result),
                SizedBox(height: 5.h),
                const RangesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
