import 'package:bmi_calculator/Widgets/drawer.dart';
import 'package:bmi_calculator/Widgets/slider.dart';
import 'package:bmi_calculator/Widgets/toggle_switch.dart';
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/constants/text_style.dart';
import 'package:bmi_calculator/generated/l10n.dart';
import 'package:bmi_calculator/logic/bmi_brain.dart';
import 'package:bmi_calculator/view/results_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 165;
  double weight = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: MyColors.myBlue),
      ),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Text(S.of(context).BMI_Calculator, style: TextStyles.headLine),
                SizedBox(height: 50.h),
                Text("${S.of(context).Gender} :", style: TextStyles.bodyText),
                SizedBox(height: 10.h),
                const ToggleSwitchWidget(),
                SizedBox(height: 50.h),
                SFSliderWidget(
                  minValue: 140,
                  maxValue: 200,
                  title: S.of(context).Height,
                  unit: S.of(context).CM,
                  measuredValue: height,
                  onChangedFunction: (value) {
                    setState(() {
                      height = value;
                    });
                  },
                ),
                SizedBox(height: 50.h),
                SFSliderWidget(
                  minValue: 40,
                  maxValue: 130,
                  title: S.of(context).Weight,
                  unit: S.of(context).KG,
                  measuredValue: weight,
                  onChangedFunction: (value) {
                    setState(() {
                      weight = value;
                    });
                  },
                ),
                SizedBox(height: 100.h),
                InkWell(
                  onTap: () {
                    Calculation calc =
                        Calculation(height: height, weight: weight);
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ResultsScreen(
                          result: calc.result(),
                          indexOfRow: calc.getTextColor(),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 10),
                    decoration: BoxDecoration(
                      color: MyColors.myBlue,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      S.of(context).Calculate,
                      style: TextStyles.whiting(TextStyles.bodyText),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
