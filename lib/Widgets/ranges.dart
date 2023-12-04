// ignore_for_file: public_member_api_docs, sort_constructors_first
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
          buildSelectableRow(0, '18.5 <', 'Underweight'),
          SizedBox(height: 7.h),
          buildSelectableRow(1, '18.5 - 24.9', 'Healthy'),
          SizedBox(height: 7.h),
          buildSelectableRow(2, '25 - 29.9', 'Overweight'),
          SizedBox(height: 7.h),
          buildSelectableRow(3, '30 - 34.9', 'Obese'),
          SizedBox(height: 7.h),
          buildSelectableRow(4, '35 - 39.9', 'Highly Obese'),
          SizedBox(height: 7.h),
          buildSelectableRow(5, '40 >', 'Extremly Obese'),
          // Row(
          //   children: [
          //     Text(
          //       "18.5 <",
          //       style: TextStyles.bodyText,
          //     ),
          //     const Spacer(),
          //     Text(
          //       "Underweight",
          //       style: TextStyles.bodyText,
          //     )
          //   ],
          // ),
          // SizedBox(height: 5.h),
          // Row(
          //   children: [
          //     Text(
          //       "18.5 - 24.9",
          //       style: TextStyles.bodyText,
          //     ),
          //     const Spacer(),
          //     Text(
          //       "Healthy",
          //       style: TextStyles.bodyText,
          //     )
          //   ],
          // ),
          // SizedBox(height: 5.h),
          // Row(
          //   children: [
          //     Text(
          //       "25 - 29.9",
          //       style: TextStyles.bodyText,
          //     ),
          //     const Spacer(),
          //     Text(
          //       "Overweight",
          //       style: TextStyles.bodyText,
          //     )
          //   ],
          // ),
          // SizedBox(height: 5.h),
          // Row(
          //   children: [
          //     Text(
          //       "30 - 34.9",
          //       style: TextStyles.bodyText,
          //     ),
          //     const Spacer(),
          //     Text(
          //       "Obese",
          //       style: TextStyles.bodyText,
          //     )
          //   ],
          // ),
          // SizedBox(height: 5.h),
          // Row(
          //   children: [
          //     Text(
          //       "35 - 39.9",
          //       style: TextStyles.bodyText,
          //     ),
          //     const Spacer(),
          //     Text(
          //       "Highly Obese",
          //       style: TextStyles.bodyText,
          //     )
          //   ],
          // ),
          // SizedBox(height: 5.h),
          // Row(
          // children: [
          //   Text(
          //     "40 >",
          //     style: TextStyles.bodyText,
          //   ),
          //   const Spacer(),
          //   Text(
          //     "Extremly Obese",
          //     style: TextStyles.bodyText,
          //   )
          //   ],
          // ),
        ],
      ),
    );
  }

//**************************************************************************************************

  Widget buildSelectableRow(int index, String leftText, String rightText) {
    bool isSelected = widget.selectedRow == index;

    return InkWell(
      onTap: () {
        setState(() {
          widget.selectedRow = isSelected ? -1 : index;
        });
      },
      child: Row(
        children: [
          Text(leftText,
              style: isSelected ? TextStyles.headLine2 : TextStyles.bodyText),
          const Spacer(),
          Text(rightText,
              style: isSelected ? TextStyles.headLine2 : TextStyles.bodyText),
        ],
      ),
    );
  }
}
