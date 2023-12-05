// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_calculator/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:bmi_calculator/constants/text_style.dart';

// ignore: must_be_immutable
class RangesWidget extends StatefulWidget {
  int selectedRow;
  RangesWidget({
    super.key,
    required this.selectedRow,
  });

  @override
  State<RangesWidget> createState() => _RangesWidgetState();
}

class _RangesWidgetState extends State<RangesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child: Column(
        children: [
          buildSelectableRow(0, '18.5 <', S.of(context).Underweight),
          SizedBox(height: 7.h),
          buildSelectableRow(1, '18.5 - 24.9', S.of(context).Healthy),
          SizedBox(height: 7.h),
          buildSelectableRow(2, '25 - 29.9', S.of(context).Overweight),
          SizedBox(height: 7.h),
          buildSelectableRow(3, '30 - 34.9', S.of(context).Obese),
          SizedBox(height: 7.h),
          buildSelectableRow(4, '35 - 39.9', S.of(context).Highly_Obese),
          SizedBox(height: 7.h),
          buildSelectableRow(5, '40 >', S.of(context).Extremly_Obese),
        ],
      ),
    );
  }

//**************************************************************************************************

  Widget buildSelectableRow(int index, String leftText, String rightText) {
    bool isSelected = widget.selectedRow == index;

    return Row(
      children: [
        Text(leftText,
            style: isSelected ? TextStyles.headLine2 : TextStyles.bodyText),
        const Spacer(),
        Text(rightText,
            style: isSelected ? TextStyles.headLine2 : TextStyles.bodyText),
      ],
    );
  }
}
