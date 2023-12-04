import 'package:bmi_calculator/constants/text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:syncfusion_flutter_sliders/sliders.dart";
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:bmi_calculator/constants/colors.dart';

// ignore: must_be_immutable
class SFSliderWidget extends StatefulWidget {
  final String title;
  final String unit;
  final int minValue;
  final int maxValue;
  double measuredValue;
  final void Function(dynamic) onChangedFunction;
  SFSliderWidget({
    super.key,
    required this.minValue,
    required this.maxValue,
    required this.measuredValue,
    required this.title,
    required this.unit,
    required this.onChangedFunction,
  });

  @override
  State<SFSliderWidget> createState() => _SFSliderWidgetState();
}

class _SFSliderWidgetState extends State<SFSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${widget.title} : ",
                style: TextStyles.bodyText,
              ),
              Text(
                "${widget.measuredValue.toInt()} ",
                style: TextStyles.headLine,
              ),
              Text(
                widget.unit,
                style: TextStyles.bodyText,
              ),
            ],
          ),
          SfSliderTheme(
            data: SfSliderThemeData(
              activeLabelStyle: TextStyle(
                color: MyColors.myBlue,
                fontSize: 12.sp,
              ),
              inactiveLabelStyle: TextStyle(
                color: MyColors.myGrey,
                fontSize: 12.sp,
              ),
            ),
            child: SfSlider(
              min: widget.minValue,
              max: widget.maxValue,
              value: widget.measuredValue,
              onChanged: widget.onChangedFunction,
              showTicks: true,
              showLabels: true,
              interval: 10,
              activeColor: MyColors.myBlue,
              inactiveColor: MyColors.myGrey,
            ),
          ),
        ],
      ),
    );
  }
}
