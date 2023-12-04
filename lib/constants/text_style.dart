import 'package:bmi_calculator/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static TextStyle headLine = GoogleFonts.sairaSemiCondensed(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    color: MyColors.myBlue,
  );

  static TextStyle headLine2 = GoogleFonts.sairaSemiCondensed(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: MyColors.myBlue,
  );

  static TextStyle bodyText = GoogleFonts.sairaSemiCondensed(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: MyColors.myGrey,
  );

  static TextStyle whiting(TextStyle textStyle) {
    return textStyle.copyWith(color: MyColors.myWhite);
  }
}
