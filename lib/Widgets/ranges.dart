import 'package:bmi_calculator/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RangesWidget extends StatelessWidget {
  const RangesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "18.5 <",
                style: TextStyles.bodyText,
              ),
              const Spacer(),
              Text(
                "Underweight",
                style: TextStyles.bodyText,
              )
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                "18.5 - 24.9",
                style: TextStyles.bodyText,
              ),
              const Spacer(),
              Text(
                "Healthy",
                style: TextStyles.bodyText,
              )
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                "25 - 29.9",
                style: TextStyles.bodyText,
              ),
              const Spacer(),
              Text(
                "Overweight",
                style: TextStyles.bodyText,
              )
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                "30 - 34.9",
                style: TextStyles.bodyText,
              ),
              const Spacer(),
              Text(
                "Obese",
                style: TextStyles.bodyText,
              )
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                "35 - 39.9",
                style: TextStyles.bodyText,
              ),
              const Spacer(),
              Text(
                "Highly Obese",
                style: TextStyles.bodyText,
              )
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(
                "40 >",
                style: TextStyles.bodyText,
              ),
              const Spacer(),
              Text(
                "Extremly Obese",
                style: TextStyles.bodyText,
              )
            ],
          ),
        ],
      ),
    );
  }
}
